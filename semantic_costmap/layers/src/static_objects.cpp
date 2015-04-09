#include <layers/static_objects.h>
#include <pluginlib/class_list_macros.h>

PLUGINLIB_EXPORT_CLASS(semantic_costmap::StaticObjects, costmap_2d::Layer)

using costmap_2d::NO_INFORMATION;
using costmap_2d::LETHAL_OBSTACLE;
using costmap_2d::FREE_SPACE;
 

namespace semantic_costmap
{
  StaticObjects::StaticObjects()
     {
       
     }
  void StaticObjects::onInitialize()
  {
    
    ros::NodeHandle nh("~/" + name_), g_nh;
    current_ = true;
    global_frame_ = layered_costmap_->getGlobalFrameID();

    client_class_ = new ClientClass(g_nh);

 /* subscribe_to_updates_ = false;
    track_unknown_space_ = true;
    use_maximum_ = false;
    temp_lethal_threshold = int(100);
    temp_unknown_cost_value = int(-1);
    trinary_costmap_ = true;
    unknown_cost_value_ = temp_unknown_cost_value;
    int temp_lethal_threshold, temp_unknown_cost_value;
    temp_lethal_threshold = 100;
    temp_unknown_cost_value = -1;

    lethal_threshold_ = std::max(std::min(temp_lethal_threshold, 100), 0);
    unknown_cost_value_ = temp_unknown_cost_value;*/

    nh.param("subscribe_to_updates", subscribe_to_updates_, false);
    nh.param("track_unknown_space", track_unknown_space_, true);
    nh.param("use_maximum", use_maximum_, false);

    int temp_lethal_threshold, temp_unknown_cost_value;
    
    nh.param("lethal_cost_threshold", temp_lethal_threshold, int(100));
    nh.param("unknown_cost_value", temp_unknown_cost_value, int(-1));
    nh.param("trinary_costmap", trinary_costmap_, true);
    lethal_threshold_ = std::max(std::min(temp_lethal_threshold, 100), 0);
    unknown_cost_value_ = temp_unknown_cost_value;
  
    matchSize();

    dsrv_ = NULL;
    setupDynamicReconfigure(nh);


  }

  void StaticObjects::setupDynamicReconfigure(ros::NodeHandle& nh)
  {
    dsrv_ = new dynamic_reconfigure::Server<costmap_2d::GenericPluginConfig>(nh);
    dynamic_reconfigure::Server<costmap_2d::GenericPluginConfig>::CallbackType cb = boost::bind(&StaticObjects::reconfigureCB, this, _1, _2);
    dsrv_->setCallback(cb);
  }

  
  StaticObjects::~StaticObjects()
  {
    if(dsrv_)
      delete dsrv_;
  }


  void StaticObjects::reconfigureCB(costmap_2d::GenericPluginConfig &config, uint32_t level)
  {
  /*  enabled_ = true;
    has_updated_data_ = true;
    x_ = y_ = 0;
    width_ = size_x_;
    height_ = size_y_; */

    if (config.enabled != enabled_)
    {
      enabled_ = config.enabled;
      has_updated_data_ = true;
      x_ = y_ = 0;
      width_ = size_x_;
      height_ = size_y_;
    }
  }

  void StaticObjects::matchSize()
  {
    Costmap2D* master = layered_costmap_->getCostmap();
    resizeMap(master->getSizeInCellsX(), master->getSizeInCellsY(), master->getResolution(),
    master->getOriginX(), master->getOriginY());
  }

  unsigned char StaticObjects::interpretValue(unsigned char value, unsigned int x, unsigned int y)
  {
    unsigned int x_ = x;
    unsigned int y_ = y;

    //check if the static value is above the unknown or lethal thresholds
    if (track_unknown_space_ && value == unknown_cost_value_)
      return NO_INFORMATION;

    else if (value >= lethal_threshold_ && inObjectBoundingBox(x_,y_))
      return LETHAL_OBSTACLE;

    else if (trinary_costmap_)
      return FREE_SPACE;

    double scale = (double) value / lethal_threshold_;
    return scale * LETHAL_OBSTACLE;
  }

  bool StaticObjects::inObjectBoundingBox(unsigned int x, unsigned int y)
  { 
    inside_ = false;
    
    for (k_ = 0; k_ < object_list_.objects.size(); k_++) 
    {
      for (l_ = 0; l_ < 4; l_++) 
      {
        polyX[l_] = object_list_.objects[k_].geometry.bounding_box.vertices[l_].x;
        polyY[l_] = object_list_.objects[k_].geometry.bounding_box.vertices[l_].y;
      }
    oddNodes_= false;
    j_ = 3;
    for (i_=0; i_<4; i_++) 
    {
      if ((polyY[i_]< y && polyY[j_]>=y || polyY[j_]< y && polyY[i_]>=y)
         &&  (polyX[i_]<=x || polyX[j_]<=x)) 
      {
        if (polyX[i_]+(y-polyY[i_])/(polyY[j_]-polyY[i_])*(polyX[j_]-polyX[i_])<x) 
        {
          oddNodes_ = !oddNodes_; 
        }
      }
      j_ = i_; 
    }
   
    if (oddNodes_ == true)
    {
       inside_ = true;
    }

    }
    return inside_;
  }

  void StaticObjects::incomingMap(const nav_msgs::OccupancyGrid& map, std::string name, unsigned char* costmap)
  {

  object_category.data = name;
  
  object_list_ = client_class_->call_service(object_category);

  matchSize();
  unsigned int size_x = map.info.width, size_y = map.info.height;

  unsigned int index = 0;
  
  //initialize the costmap with static data
  for (unsigned int i = 0; i < size_y; ++i)
  {
    for (unsigned int j = 0; j < size_x; ++j)
    {
      unsigned char value = map.data[index];
      costmap[index] = interpretValue(value, j, i);
      /*if(costmap_[index] == LETHAL_OBSTACLE)
      {
        ROS_INFO("Value:%d", costmap_[index]);
      }*/
      ++index;
     }
  }


  }

  void StaticObjects::updateBounds(double robot_x, double robot_y, double robot_yaw, double* min_x, double* min_y, double* max_x, double* max_y)
  {
    useExtraBounds(min_x, min_y, max_x, max_y);
    double mx, my;
    mapToWorld(x_, y_, mx, my);
    *min_x = std::min(mx, *min_x);
    *min_y = std::min(my, *min_y);
    mapToWorld(x_ + width_, y_ + height_, mx, my);
    *max_x = std::max(mx, *max_x);
    *max_y = std::max(my, *max_y);
  }

  void StaticObjects::updateCosts(costmap_2d::Costmap2D& master_grid, int min_i, int min_j, int max_i, int max_j)
  {
    updateWithMax(master_grid, min_i, min_j, max_i, max_j);
  }

  void StaticObjects::activate()
  {
    onInitialize();
  } 

  void StaticObjects::deactivate()
  {

  }

  void StaticObjects::reset()
  {
    deactivate();
    activate();
  }

}
