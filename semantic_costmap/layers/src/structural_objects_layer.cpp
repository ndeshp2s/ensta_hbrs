#include <layers/structural_objects_layer.h>
#include <costmap_2d/costmap_math.h>
#include <pluginlib/class_list_macros.h>
 
PLUGINLIB_EXPORT_CLASS(semantic_costmap::StructuralObjectsLayer, costmap_2d::Layer)

using costmap_2d::NO_INFORMATION;
using costmap_2d::LETHAL_OBSTACLE;
using costmap_2d::FREE_SPACE;

 
namespace semantic_costmap
{

    void StructuralObjectsLayer::onInitialize()
    {
     ros::NodeHandle nh("~/" + name_), g_nh;
     
     layered_costmap_->getGlobalFrameID();

     current_ = true;
     
     static_objects_.initialize(layered_costmap_, name_ + "_static_objects", tf_);
    
     ROS_INFO("Requesting the map...");
     map_sub_ = g_nh.subscribe("map", 1, &StructuralObjectsLayer::incomingMap, this);
     map_received_ = false;
     has_updated_data_ = false;
     ros::Rate r(10);

     double inflation_radius = 1.0;
     double weight = 1.0;

     while (!map_received_ && g_nh.ok())
     {
       ros::spinOnce();
       r.sleep();
     }
   
     ROS_INFO("Received a %d X %d map at %f m/pix", getSizeInCellsX(), getSizeInCellsY(), getResolution()); 
 
     
     dsrv_ = NULL;
     setupDynamicReconfigure(nh);   

//     dynamic_objects_.onInitialize(layered_costmap_, name_ + "_dynamic_objects", tf_);
     inflate_objects_.onInitialize(layered_costmap_, name_ + "_inflate_objects", tf_, inflation_radius, weight); 
    
  }

  void StructuralObjectsLayer::setupDynamicReconfigure(ros::NodeHandle& nh)
  {
    dsrv_ = new dynamic_reconfigure::Server<costmap_2d::GenericPluginConfig>(nh);
    dynamic_reconfigure::Server<costmap_2d::GenericPluginConfig>::CallbackType cb = boost::bind(&StructuralObjectsLayer::reconfigureCB, this, _1, _2);

     dsrv_->setCallback(cb);
  }

  void StructuralObjectsLayer::reconfigureCB(costmap_2d::GenericPluginConfig &config, uint32_t level)
  {
      enabled_ = true;
      has_updated_data_ = true;
      x_ = y_ = 0;
      width_ = size_x_;
      height_ = size_y_;

 //     inflation_radius = config.inflation_radius;
 //     weight = config.cost_scaling_factor;
  }

  StructuralObjectsLayer::~StructuralObjectsLayer()
  {
    if(dsrv_)
      delete dsrv_;

  }

  void StructuralObjectsLayer::incomingMap(const nav_msgs::OccupancyGridConstPtr new_map)
  {
   
    unsigned int size_x = new_map->info.width, size_y = new_map->info.height;
    ROS_DEBUG("Received a %d X %d map at %f m/pix", size_x, size_y, new_map->info.resolution);

    // resize costmap if size, resolution or origin do not match
    Costmap2D* master = layered_costmap_->getCostmap();

    if (master->getSizeInCellsX() != size_x ||
       master->getSizeInCellsY() != size_y ||
       master->getResolution() != new_map->info.resolution ||
       master->getOriginX() != new_map->info.origin.position.x ||
       master->getOriginY() != new_map->info.origin.position.y ||
       !layered_costmap_->isSizeLocked())
    {
      ROS_INFO("Resizing costmap to %d X %d at %f m/pix", size_x, size_y, new_map->info.resolution);
      layered_costmap_->resizeMap(size_x, size_y, new_map->info.resolution, new_map->info.origin.position.x, new_map->info.origin.position.y, true);

     }

     else if(size_x_ != size_x || size_y_ != size_y ||
            resolution_ != new_map->info.resolution ||
            origin_x_ != new_map->info.origin.position.x ||
            origin_y_ != new_map->info.origin.position.y)
     {
       matchSize();
     }

     x_ = y_ = 0;
     width_ = size_x_;
     height_ = size_y_;
     map_received_ = true;
     has_updated_data_ = true;

     std::string name = "structural_object";

     static_objects_.incomingMap(*new_map, name, costmap_);

  }

  void StructuralObjectsLayer::updateBounds(double robot_x, double robot_y, double robot_yaw, double* min_x,
double* min_y, double* max_x, double* max_y)
  {
//    dynamic_objects_.updateBounds(robot_x, robot_y, robot_yaw, min_x, min_y, max_x, max_y, costmap_);
    useExtraBounds(min_x, min_y, max_x, max_y);
    double mx, my;
    mapToWorld(x_, y_, mx, my);
    *min_x = std::min(mx, *min_x);
    *min_y = std::min(my, *min_y);
    mapToWorld(x_ + width_, y_ + height_, mx, my);
    *max_x = std::max(mx, *max_x);
    *max_y = std::max(my, *max_y);
    
//    static_objects_.updateBounds(robot_x, robot_y, robot_yaw, min_x, min_y, max_x, max_y);

//    dynamic_objects_.updateBounds(robot_x, robot_y, robot_yaw, min_x, min_y, max_x, max_y);

//    inflate_objects_.updateBounds(robot_x, robot_y, robot_yaw, min_x, min_y, max_x, max_y);
       
  }

  void StructuralObjectsLayer::updateCosts(costmap_2d::Costmap2D& master_grid, int min_i, int min_j, int max_i, int max_j)
  {
    static_objects_.updateCosts(structural_objects_costmap_, min_i, min_j, max_i, max_j);
    inflate_objects_.updateCosts(structural_objects_costmap_, min_i, min_j, max_i, max_j);
    updateMax(master_grid, min_i, min_j, max_i, max_j);
      
//     updateWithMax(structural_objects_costmap_, min_i, min_j, max_i, max_j);
     
         
//     dynamic_objects_.costs(light_objects_costmap_, min_i, min_j, max_i, max_j);
    
     

//     updateMax(master_grid, min_i, min_j, max_i, max_j);

  }

  void StructuralObjectsLayer::updateMax(costmap_2d::Costmap2D& master_grid, int min_i, int min_j, int max_i, int max_j)
  {
    unsigned char* master_array = master_grid.getCharMap();
    unsigned char* local_array = structural_objects_costmap_.getCharMap();

    unsigned int span = master_grid.getSizeInCellsX();

    for (int j = min_j; j < max_j; j++)
    {
      unsigned int it = j * span + min_i;
      for (int i = min_i; i < max_i; i++)
      {
        
        unsigned char old_cost = master_array[it];
        if (old_cost == NO_INFORMATION || old_cost < local_array[it])
          master_array[it] = local_array[it];
        it++;
      }
    }
  }


  void StructuralObjectsLayer::activate()
  {
    onInitialize();
  }

  void StructuralObjectsLayer::deactivate()
  {    
    map_sub_.shutdown(); 
  }

  void StructuralObjectsLayer::reset()
  {
    deactivate();
    activate();
  } 

  void StructuralObjectsLayer::matchSize()
  {
    Costmap2D* master = layered_costmap_->getCostmap();
    resizeMap(master->getSizeInCellsX(), master->getSizeInCellsY(), master->getResolution(),
    master->getOriginX(), master->getOriginY());

    structural_objects_costmap_.resizeMap(master->getSizeInCellsX(), master->getSizeInCellsY(), master->getResolution(),
    master->getOriginX(), master->getOriginY());
  }

}
