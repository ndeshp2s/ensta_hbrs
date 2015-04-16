#include <layers/dynamic_objects.h>
//#include <costmap_2d/costmap_math.h>
#include <pluginlib/class_list_macros.h>

PLUGINLIB_EXPORT_CLASS(semantic_costmap::DynamicObjects, costmap_2d::Layer)

using costmap_2d::NO_INFORMATION;
using costmap_2d::LETHAL_OBSTACLE;
using costmap_2d::FREE_SPACE;

using namespace sensor_msgs;
using namespace message_filters;


namespace semantic_costmap
{
   DynamicObjects::DynamicObjects()
   {
       costmap_ = NULL;      
   }


  // void DynamicObjects::onInitialize(costmap_2d::LayeredCostmap* parent, std::string name, tf::TransformListener *tf)
  void DynamicObjects::onInitialize(costmap_2d::LayeredCostmap* parent, std::string name, tf::TransformListener *tf, std::string type)
  { 
    ros::NodeHandle nh("~/" + name_);

    ros::NodeHandle g_nh;

    layered_costmap_ = parent;
    name_ = name;
    tf_ = tf;

    client_class_ = new ClientClass(g_nh);

    object_category.data = type;
  
    object_list_ = client_class_->call_service(object_category);

    //ROS_INFO_STREAM(object_list_);

    rolling_window_ = layered_costmap_->isRolling();

    bool track_unknown_space = false;
  
    if(track_unknown_space)
      default_value_ = NO_INFORMATION;
    else
      default_value_ = FREE_SPACE;

    matchSize();

    current_ = true;

    global_frame_ = layered_costmap_->getGlobalFrameID();

    double transform_tolerance = 0.2;

    std::string topics_string = "laser_scan_sensor";
   
    ROS_INFO(" Subscribed to Topics: %s", topics_string.c_str());
  

    ros::NodeHandle prefix_nh;
    const std::string tf_prefix = tf::getPrefixParam(prefix_nh);

    double observation_keep_time, expected_update_rate, min_obstacle_height, max_obstacle_height;
    std::string topic, sensor_frame, data_type;
    bool clearing, marking;

    observation_keep_time = 0.0;
    expected_update_rate = 0.0;
    min_obstacle_height = 0.00;
    max_obstacle_height = 5.0;

    topic = "/scan";
    sensor_frame = "/lms100";
    data_type = "LaserScan";
    ROS_INFO(" topic name: %s", topic.c_str());

    clearing = true;
    marking = true;

    double obstacle_range = 3.0;
    double raytrace_range = 10.0;

   if (!sensor_frame.empty())
   {
	sensor_frame = tf::resolve(tf_prefix, sensor_frame);
   }

   //create an observation buffer
    observation_buffers_.push_back( boost::shared_ptr <costmap_2d::ObservationBuffer > (new costmap_2d::ObservationBuffer(topic, observation_keep_time, expected_update_rate, min_obstacle_height, max_obstacle_height, obstacle_range, raytrace_range, *tf_, global_frame_, sensor_frame, transform_tolerance)));

   //check if we'll add this buffer to our marking observation buffers
  if (marking)
    marking_buffers_.push_back(observation_buffers_.back());
  //check if we'll also add this buffer to our clearing observation buffers
  if (clearing)
    clearing_buffers_.push_back(observation_buffers_.back()); 


    boost::shared_ptr < message_filters::Subscriber<sensor_msgs::LaserScan> > sub(new message_filters::Subscriber<sensor_msgs::LaserScan>(g_nh, "/scan", 50));

    boost::shared_ptr < tf::MessageFilter<sensor_msgs::LaserScan> > filter(new tf::MessageFilter<sensor_msgs::LaserScan>(*sub, *tf_, global_frame_, 50));

    filter->registerCallback(boost::bind(&DynamicObjects::laserScanValidInfCallback, this, _1, observation_buffers_.back()));

    observation_subscribers_.push_back(sub);
    observation_notifiers_.push_back(filter);
    observation_notifiers_.back()->setTolerance(ros::Duration(0.05));

    if (sensor_frame != "")
    {
      std::vector < std::string > target_frames;
      target_frames.push_back(global_frame_);
      target_frames.push_back(sensor_frame);
      observation_notifiers_.back()->setTargetFrames(target_frames);
    }

    dsrv_ = NULL;
    setupDynamicReconfigure(nh);

  }

  void DynamicObjects::setupDynamicReconfigure(ros::NodeHandle& nh)
  {
    dsrv_ = new dynamic_reconfigure::Server<costmap_2d::ObstaclePluginConfig>(nh);
    dynamic_reconfigure::Server<costmap_2d::ObstaclePluginConfig>::CallbackType cb = boost::bind(&DynamicObjects::reconfigureCB, this, _1, _2);
    dsrv_->setCallback(cb);
  }

  DynamicObjects::~DynamicObjects()
  {
    if(dsrv_)
      delete dsrv_;
  }

  void DynamicObjects::reconfigureCB(costmap_2d::ObstaclePluginConfig &config, uint32_t level)
  {
    enabled_ = true;
    max_obstacle_height_ = 5.0;
    combination_method_ = 1;
  }



  void DynamicObjects::laserScanCallback(const sensor_msgs::LaserScanConstPtr& message, const boost::shared_ptr<costmap_2d::ObservationBuffer>& buffer)
  {
    sensor_msgs::PointCloud2 cloud;
    cloud.header = message->header;
   
    //project the scan into a point cloud
    try
    {
      projector_.transformLaserScanToPointCloud(message->header.frame_id, *message, cloud, *tf_);
    }
    catch (tf::TransformException &ex)
    {
      ROS_WARN("High fidelity enabled, but TF returned a transform exception to frame %s: %s", global_frame_.c_str(), ex.what());
      projector_.projectLaser(*message, cloud);
    }

    //buffer the point cloud
    buffer->lock();
    buffer->bufferCloud(cloud);
    buffer->unlock();
      
  }

  void DynamicObjects::laserScanValidInfCallback(const sensor_msgs::LaserScanConstPtr& raw_message,
const boost::shared_ptr<costmap_2d::ObservationBuffer>& buffer)
  {

    // filter zeros
    // Filter positive infinities ("Inf"s) to max_range.
    float epsilon = 0.0001; // a tenth of a millimeter

    sensor_msgs::LaserScan message = *raw_message;
  
    for( int i = 0; i < message.ranges.size(); i++ )
    {
      float range = message.ranges[ i ];
      if( range >= message.range_max || range <= message.range_min || range == 0.0)
      {
        message.ranges[ i ] = message.range_max - epsilon;
      }
    }


    //project the laser into a point cloud
    sensor_msgs::PointCloud2 cloud;
    cloud.header = message.header;
    //project the scan into a point cloud
    try
    {
      projector_.transformLaserScanToPointCloud(message.header.frame_id, message, cloud, *tf_);
    }
    catch (tf::TransformException &ex)
    {
      ROS_WARN ("High fidelity enabled, but TF returned a transform exception to frame %s: %s", global_frame_.c_str (), ex.what ());
      projector_.projectLaser(message, cloud);
    }
    //buffer the point cloud
    buffer->lock();
    buffer->bufferCloud(cloud);
    buffer->unlock();

  }

  void DynamicObjects::updateBounds(unsigned char* costmap, double robot_x, double robot_y, double robot_yaw, double* min_x,
double* min_y, double* max_x, double* max_y) 
  {


    if (rolling_window_)
       updateOrigin(robot_x - getSizeInMetersX() / 2, robot_y - getSizeInMetersY() / 2);
     
    if (!enabled_)
      return;
    
    useExtraBounds(min_x, min_y, max_x, max_y);

    bool current = true;
    std::vector<costmap_2d::Observation> observations, clearing_observations;

    //get the marking observations
    current = current && getMarkingObservations(observations);

    //get the clearing observations
    current = current && getClearingObservations(clearing_observations);

    //update the global current status
    current_ = current;

    //raytrace freespace
    for (unsigned int i = 0; i < clearing_observations.size(); ++i)
    {
      //ROS_INFO_STREAM("raytrace running");
      raytraceFreespace(costmap, clearing_observations[i], min_x, min_y, max_x, max_y);
    }

    //place the new obstacles into a priority queue... each with a priority of zero to begin with
    for (std::vector<costmap_2d::Observation>::const_iterator it = observations.begin(); it != observations.end(); ++it)
    {
      const costmap_2d::Observation& obs = *it;
      const pcl::PointCloud<pcl::PointXYZ>& cloud = *(obs.cloud_);
      double sq_obstacle_range = obs.obstacle_range_ * obs.obstacle_range_;

      for (unsigned int i = 0; i < cloud.points.size(); ++i)
      {
        double px = cloud.points[i].x, py = cloud.points[i].y, pz = cloud.points[i].z;
        //if the obstacle is too high or too far away from the robot we won't add it
        if (pz > max_obstacle_height_)
        {
          ROS_DEBUG("The point is too high");
          continue;
        }
        //compute the squared distance from the hitpoint to the pointcloud's origin
        double sq_dist = (px - obs.origin_.x) * (px - obs.origin_.x) + (py - obs.origin_.y) * (py - obs.origin_.y) + (pz - obs.origin_.z) * (pz - obs.origin_.z);

        //if the point is far enough away... we won't consider it
        if (sq_dist >= sq_obstacle_range)
        {
          ROS_DEBUG("The point is too far away");
          continue;
        }

        //now we need to compute the map coordinates for the observation
        unsigned int mx, my;
        if (!worldToMap(px, py, mx, my))
        {
          ROS_DEBUG("Computing map coords failed");
            continue;
        }

        //check if the point belongs to the specific object category
        if (!inObjectBoundingBox(mx, my))
        {
          ROS_DEBUG("The point does not belong to object type");
          continue;

        }
 
        unsigned int index = getIndex(mx, my);
        costmap[index] = LETHAL_OBSTACLE;
        touch(px, py, min_x, min_y, max_x, max_y);   
       }
    }
    
 }

  bool DynamicObjects::inObjectBoundingBox(unsigned int x, unsigned int y)
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

  void DynamicObjects::costs(costmap_2d::Costmap2D& master_grid, int min_i, int min_j, int max_i, int max_j) 
  {
    
    updateWithMax(master_grid, min_i, min_j, max_i, max_j);
    //updateDynamicObstacles(master_grid, min_i, min_j, max_i, max_j);

  }

  void DynamicObjects::raytraceFreespace(unsigned char* costmap, const costmap_2d::Observation& clearing_observation, double* min_x, double* min_y, double* max_x, double* max_y)
  {
    double ox = clearing_observation.origin_.x;
    double oy = clearing_observation.origin_.y;
    pcl::PointCloud < pcl::PointXYZ > cloud = *(clearing_observation.cloud_);

    //get the map coordinates of the origin of the sensor
    unsigned int x0, y0;
    if (!worldToMap(ox, oy, x0, y0))
    {
      ROS_WARN_THROTTLE(1.0, "The origin for the sensor at (%.2f, %.2f) is out of map bounds. So, the costmap cannot raytrace for it.", ox, oy);
      return;
    }

    //we can pre-compute the enpoints of the map outside of the inner loop... we'll need these later
    double origin_x = origin_x_, origin_y = origin_y_;
    double map_end_x = origin_x + size_x_ * resolution_;
    double map_end_y = origin_y + size_y_ * resolution_;
    
    //ROS_INFO("mad end x: %f",map_end_x);
    //ROS_INFO("mad end y: %f",map_end_y);
    

    touch(ox, oy, min_x, min_y, max_x, max_y);

    //ROS_INFO("size: %f",cloud.points.size());

    //for each point in the cloud, we want to trace a line from the origin and clear obstacles along it
    for (unsigned int i = 0; i < cloud.points.size(); ++i)
    {
      double wx = cloud.points[i].x;
     // ROS_INFO("cloud x: %f", wx);
    //ROS_INFO("mad end y: %f",map_end_y);
      double wy = cloud.points[i].y;

      //now we also need to make sure that the enpoint we're raytracing to isn't off the costmap and scale if necessary
      double a = wx - ox;
      double b = wy - oy;

      //the minimum value to raytrace from is the origin
      if (wx < origin_x)
      {
        double t = (origin_x - ox) / a;
        wx = origin_x;
        wy = oy + b * t;
      }

      if (wy < origin_y)
      {
        double t = (origin_y - oy) / b;
        wx = ox + a * t;
        wy = origin_y;
      }

      //the maximum value to raytrace to is the end of the map
      if (wx > map_end_x)
      {
        double t = (map_end_x - ox) / a;
        wx = map_end_x - .001;
        wy = oy + b * t;
      }
      
      if (wy > map_end_y)
      {
        double t = (map_end_y - oy) / b;
        wx = ox + a * t;
        wy = map_end_y - .001;
      }

      //now that the vector is scaled correctly... we'll get the map coordinates of its endpoint
      unsigned int x1, y1;

      //check for legality just in case
      if (!worldToMap(wx, wy, x1, y1))
        continue;

      

      unsigned int cell_raytrace_range = cellDistance(clearing_observation.raytrace_range_);
      MarkCell marker(costmap, FREE_SPACE);
      //and finally... we can execute our trace to clear obstacles along that line
//      ROS_INFO("x0:%d", x0);
//      ROS_INFO("y0:%d", y0);
//      ROS_INFO("x1:%d", x1);
//      ROS_INFO("y1:%d", y1);
//      ROS_INFO("cell_raytrace_range:%d", cell_raytrace_range);
      raytraceLine(marker, x0, y0, x1, y1, cell_raytrace_range);
      updateRaytraceBounds(ox, oy, wx, wy, clearing_observation.raytrace_range_, min_x, min_y, max_x, max_y);
    }
  }

  void DynamicObjects::updateRaytraceBounds(double ox, double oy, double wx, double wy, double range, double* min_x, double* min_y,
double* max_x, double* max_y)
  {
    double dx = wx-ox, dy = wy-oy;
    double full_distance = hypot(dx, dy);
    double scale = std::min(1.0, range / full_distance);
    double ex = ox + dx * scale, ey = oy + dy * scale;
    touch(ex, ey, min_x, min_y, max_x, max_y);
  }


  bool DynamicObjects::getMarkingObservations(std::vector<costmap_2d::Observation>& marking_observations) const
  {

    bool current = true;

    //get the marking observations
    for (unsigned int i = 0; i < marking_buffers_.size(); ++i)
    {
      marking_buffers_[i]->lock();
      marking_buffers_[i]->getObservations(marking_observations);
      current = marking_buffers_[i]->isCurrent() && current;
      marking_buffers_[i]->unlock();
    }

    marking_observations.insert(marking_observations.end(),
    static_marking_observations_.begin(), static_marking_observations_.end());

    return current;
  }

  bool DynamicObjects::getClearingObservations(std::vector<costmap_2d::Observation>& clearing_observations) const
  {
    bool current = true;

    //get the clearing observations
    for (unsigned int i = 0; i < clearing_buffers_.size(); ++i)
    {
      clearing_buffers_[i]->lock();
      clearing_buffers_[i]->getObservations(clearing_observations);
      current = clearing_buffers_[i]->isCurrent() && current;
      clearing_buffers_[i]->unlock();
    }
    
    clearing_observations.insert(clearing_observations.end(), static_clearing_observations_.begin(), static_clearing_observations_.end());

    return current;
  }

  void DynamicObjects::matchSize()
  {
    Costmap2D* master = layered_costmap_->getCostmap();
    resizeMap(master->getSizeInCellsX(), master->getSizeInCellsY(), master->getResolution(),
    master->getOriginX(), master->getOriginY());

    size_x_ = master->getSizeInCellsX();
  }

  void DynamicObjects::addStaticObservation(costmap_2d::Observation& obs, bool marking, bool clearing)
  {
  
    if(marking)
      static_marking_observations_.push_back(obs);

    if(clearing)
      static_clearing_observations_.push_back(obs);
  }

  void DynamicObjects::clearStaticObservations(bool marking, bool clearing)
  {
  
    if(marking)
      static_marking_observations_.clear();

    if(clearing)
      static_clearing_observations_.clear();
  }

  unsigned char* DynamicObjects::getCharMap() const
  {
    return costmap_;
  }

  void DynamicObjects::updateDynamicObstacles(costmap_2d::Costmap2D& master_grid, int min_i, int min_j, int max_i, int max_j)
  {
    unsigned char* master_array = master_grid.getCharMap();
    unsigned int span = master_grid.getSizeInCellsX();

    for (int j = min_j; j < max_j; j++)
    {
      unsigned int it = j * span + min_i;
      for (int i = min_i; i < max_i; i++)
      {
        unsigned char old_cost = master_array[it];
	if (old_cost == NO_INFORMATION || old_cost < costmap_[it])
  	  master_array[it] = costmap_[it];
	it++;
       }
     }
       
  }

 void DynamicObjects::activate()
  {

    //if we're stopped we need to re-subscribe to topics
    for (unsigned int i = 0; i < observation_subscribers_.size(); ++i)
    {
      if (observation_subscribers_[i] != NULL)
        observation_subscribers_[i]->subscribe();
    }

    for (unsigned int i = 0; i < observation_buffers_.size(); ++i)
    {
      if (observation_buffers_[i])
        observation_buffers_[i]->resetLastUpdated();
    }
    
  }

  void DynamicObjects::deactivate()
  {
    for (unsigned int i = 0; i < observation_subscribers_.size(); ++i)
    {
      if (observation_subscribers_[i] != NULL)
        observation_subscribers_[i]->unsubscribe();
    }

  }

  void DynamicObjects::reset()
  {
    deactivate();
    resetMaps();
    current_ = true;
    activate();
  }





}
