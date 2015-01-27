#include<simple_layers/structure_layer.h>
#include <pluginlib/class_list_macros.h>
 
PLUGINLIB_EXPORT_CLASS(simple_layer_namespace::StructureLayer, costmap_2d::Layer)
 
using costmap_2d::LETHAL_OBSTACLE;
using costmap_2d::NO_INFORMATION;
using costmap_2d::FREE_SPACE;
 
namespace simple_layer_namespace
{
 
 StructureLayer::StructureLayer() : dsrv_(NULL){}

 StructureLayer::~StructureLayer()
 {
    if(dsrv_)
        delete dsrv_;
 }
 
 void StructureLayer::onInitialize()
 {
     ros::NodeHandle nh("~/" + name_), g_nh;
  current_ = true;

  global_frame_ = layered_costmap_->getGlobalFrameID();

  std::string map_topic;
  nh.param("map_topic", map_topic, std::string("map"));
  nh.param("subscribe_to_updates", subscribe_to_updates_, false);
  
  nh.param("track_unknown_space", track_unknown_space_, true);
  nh.param("use_maximum", use_maximum_, false);

  int temp_lethal_threshold, temp_unknown_cost_value;
  nh.param("lethal_cost_threshold", temp_lethal_threshold, int(100));
  nh.param("unknown_cost_value", temp_unknown_cost_value, int(-1));
  nh.param("trinary_costmap", trinary_costmap_, true);

  lethal_threshold_ = std::max(std::min(temp_lethal_threshold, 100), 0);
  unknown_cost_value_ = temp_unknown_cost_value;
  //we'll subscribe to the latched topic that the map server uses
  ROS_INFO("Requesting the map...");
  map_sub_ = g_nh.subscribe(map_topic, 1, &StructureLayer::incomingMap, this);
  map_received_ = false;
  has_updated_data_ = false;

  ros::Rate r(10);
  while (!map_received_ && g_nh.ok())
  {
    ros::spinOnce();
    r.sleep();
  }

  ROS_INFO("Received a %d X %d map at %f m/pix", getSizeInCellsX(), getSizeInCellsY(), getResolution());
  
  if(subscribe_to_updates_)
  {
    ROS_INFO("Subscribing to updates");
    map_update_sub_ = g_nh.subscribe(map_topic + "_updates", 10, &StructureLayer::incomingUpdate, this);
  }

  if(dsrv_)
  {
    delete dsrv_;
  }

  dsrv_ = new dynamic_reconfigure::Server<costmap_2d::GenericPluginConfig>(nh);
  dynamic_reconfigure::Server<costmap_2d::GenericPluginConfig>::CallbackType cb = boost::bind(
      &StructureLayer::reconfigureCB, this, _1, _2);
  dsrv_->setCallback(cb);
 }
 
 
 void StructureLayer::matchSize()
 {
   Costmap2D* master = layered_costmap_->getCostmap();
   resizeMap(master->getSizeInCellsX(), master->getSizeInCellsY(), master->getResolution(),
            master->getOriginX(), master->getOriginY());
 }
 
 
 void StructureLayer::reconfigureCB(costmap_2d::GenericPluginConfig &config, uint32_t level)
 {
     if (config.enabled != enabled_)
	  {
	    enabled_ = config.enabled;
	    has_updated_data_ = true;
	    x_ = y_ = 0;
	    width_ = size_x_;
	    height_ = size_y_;
	  }
 }


 unsigned char StructureLayer::interpretValue(unsigned char value)
 {

  //check if the static value is above the unknown or lethal thresholds
  if (track_unknown_space_ && value == unknown_cost_value_)
    return NO_INFORMATION;
  else if (value >= lethal_threshold_)
    return LETHAL_OBSTACLE;
  else if (trinary_costmap_)
    return FREE_SPACE;

  double scale = (double) value / lethal_threshold_;
  return scale * LETHAL_OBSTACLE;
 }

  unsigned char StructureLayer::interpretValueMy(unsigned char value, unsigned int x, unsigned int y)
 {

 unsigned int x_ = x;
 unsigned int y_ = y;
//    wall_footprint_[0] = 0;
 // wall_footprint_[1] = 400;
  ///wall_footprint_[2] = 400;
 // wall_footprint_[3] = 0;
 // wall_footprint_[4] = 395;
 // wall_footprint_[5] = 395;
 // wall_footprint_[6] = 400;
  //wall_footprint_[7] = 400;

  
  //check if the static value is above the unknown or lethal thresholds
  if (track_unknown_space_ && value == unknown_cost_value_)
    return NO_INFORMATION;
  else if (value >= lethal_threshold_ && inFootprint(x_,y_))
    return LETHAL_OBSTACLE;
  else if (trinary_costmap_)
    return FREE_SPACE;
	  
  double scale = (double) value / lethal_threshold_;
  return scale * LETHAL_OBSTACLE;


 }
 
 bool StructureLayer::inFootprint(unsigned int x, unsigned int y)
 {
 polyX[0] = 0;
 polyX[1] = 400;
 polyX[2] = 400;
 polyX[3] = 0;
 polyY[0] = 0;
 polyY[1] = 0;
 polyY[2] = 5;
 polyY[3] = 5;

 int   i, j=3;
  bool  oddNodes=false;
  
  for (i=0; i<4; i++) {
    if ((polyY[i]< y && polyY[j]>=y
    ||   polyY[j]< y && polyY[i]>=y)
    &&  (polyX[i]<=x || polyX[j]<=x)) {
      if (polyX[i]+(y-polyY[i])/(polyY[j]-polyY[i])*(polyX[j]-polyX[i])<x) {
        oddNodes=!oddNodes; }}
    j=i; }

  return oddNodes;



  
 }


 void StructureLayer::incomingMap(const nav_msgs::OccupancyGridConstPtr& new_map)
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
    layered_costmap_->resizeMap(size_x, size_y, new_map->info.resolution, new_map->info.origin.position.x,
                                new_map->info.origin.position.y, true);
  }else if(size_x_ != size_x || size_y_ != size_y ||
      resolution_ != new_map->info.resolution ||
      origin_x_ != new_map->info.origin.position.x ||
      origin_y_ != new_map->info.origin.position.y){
    matchSize();
  }

  unsigned int index = 0;

  //initialize the costmap with static data
  
  for (unsigned int i = 0; i < size_y; ++i)
  {
    for (unsigned int j = 0; j < size_x; ++j)
    {
      
      {
	      unsigned char value = new_map->data[index];
	      costmap_[index] = interpretValueMy(value, j, i);
              ++index;
      }
    }
  }

  
  x_ = y_ = 0;
  width_ = size_x_;
  height_ = size_y_;
  map_received_ = true;
  has_updated_data_ = true;
  
 } 

 void StructureLayer::incomingUpdate(const map_msgs::OccupancyGridUpdateConstPtr& update)
 {
 /*   unsigned int di = 0;
    for (unsigned int y = 0; y < update->height ; y++)
    {
        unsigned int index_base = (update->y + y) * update->width;
        for (unsigned int x = 0; x < update->width ; x++)
        {
            unsigned int index = index_base + x + update->x;
            costmap_[index] = interpretValue( update->data[di++] );
        }
    }
    x_ = update->x;
    y_ = update->y;
    width_ = update->width;
    height_ = update->height;
    has_updated_data_ = true; */
 }

 void StructureLayer::activate()
 {
    onInitialize();
 }

 void StructureLayer::deactivate()
 {
    map_sub_.shutdown();
    if (subscribe_to_updates_)
        map_update_sub_.shutdown();
 }

 void StructureLayer::reset()
 {
    deactivate();
    activate();
 }








 void StructureLayer::updateBounds(double origin_x, double origin_y, double origin_yaw, double* min_x,
                                            double* min_y, double* max_x, double* max_y)
 {
   
  if (!map_received_ || !(has_updated_data_ || has_extra_bounds_))
    return;
    
  useExtraBounds(min_x, min_y, max_x, max_y);

  double mx, my;
  
  mapToWorld(x_, y_, mx, my);
  *min_x = std::min(mx, *min_x);
  *min_y = std::min(my, *min_y);
  
  mapToWorld(x_ + width_, y_ + height_, mx, my);
  *max_x = std::max(mx, *max_x);
  *max_y = std::max(my, *max_y);
  
  has_updated_data_ = false;

 }
 
 void StructureLayer::updateCosts(costmap_2d::Costmap2D& master_grid, int min_i, int min_j, int max_i,
                                           int max_j)
 {
   if (!map_received_)
    return;
  if (!use_maximum_)
    updateWithTrueOverwrite(master_grid, min_i, min_j, max_i, max_j);
  else
    updateWithMax(master_grid, min_i, min_j, max_i, max_j);
 }
 
 } // end namespace
