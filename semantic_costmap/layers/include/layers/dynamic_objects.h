#ifndef DYNAMIC_OBJECTS_H_
#define DYNAMIC_OBJECTS_H_

#include <costmap_2d/costmap_2d.h>
#include <costmap_2d/costmap_layer.h>
#include <costmap_2d/layered_costmap.h>
#include <costmap_2d/observation_buffer.h>

#include <nav_msgs/OccupancyGrid.h>

#include <sensor_msgs/LaserScan.h>
#include <laser_geometry/laser_geometry.h>
#include <sensor_msgs/PointCloud.h>
#include <sensor_msgs/PointCloud2.h>
#include <sensor_msgs/point_cloud_conversion.h>
//#include <tf/message_filter.h>
//#include <message_filters/subscriber.h>
#include <dynamic_reconfigure/server.h>
#include <costmap_2d/ObstaclePluginConfig.h>

#include <costmap_2d/costmap_math.h>
#include "tf/transform_listener.h"
#include "tf/message_filter.h"
#include "message_filters/subscriber.h"

#include <query_knowledgebase/client_library.h>
#include <std_msgs/String.h>
#include <string>

namespace semantic_costmap
{

  class DynamicObjects : public costmap_2d::CostmapLayer
  {
  public:

     DynamicObjects();
     virtual void onInitialize(costmap_2d::LayeredCostmap* parent, std::string name, tf::TransformListener *tf, std::string type);
     //virtual void onInitialize(costmap_2d::LayeredCostmap* parent, std::string name, tf::TransformListener *tf);
     //DynamicObjects(std::string name, std::string global_frame) : name_(name), global_frame_(global_frame)
 

     virtual ~DynamicObjects();

     virtual void updateBounds(unsigned char* costmap, double robot_x, double robot_y, double robot_yaw, double* min_x,
double* min_y, double* max_x, double* max_y);

     void costs(costmap_2d::Costmap2D& master_grid, int min_i, int min_j, int max_i, int max_j);

     virtual void activate();
     virtual void deactivate();
     virtual void reset();

     void laserScanCallback(const sensor_msgs::LaserScanConstPtr& message, const boost::shared_ptr<costmap_2d::ObservationBuffer>& buffer);

     void laserScanValidInfCallback(const sensor_msgs::LaserScanConstPtr& message, const boost::shared_ptr<costmap_2d::ObservationBuffer>& buffer);

     virtual void raytraceFreespace(unsigned char* costmap, const costmap_2d::Observation& clearing_observation, double* min_x, double* min_y, double* max_x, double* max_y);

     void updateRaytraceBounds(double ox, double oy, double wx, double wy, double range, double* min_x, double* min_y,
double* max_x, double* max_y);

     void matchSize();
    void updateDynamicObstacles(costmap_2d::Costmap2D& master_grid, int min_i, int min_j, int max_i, int max_j);
      unsigned char* getCharMap() const;

     // for testing purposes
     void addStaticObservation(costmap_2d::Observation& obs, bool marking, bool clearing);
     void clearStaticObservations(bool marking, bool clearing);

     laser_geometry::LaserProjection projector_; ///< @brief Used to project laser scans into point clouds

     std::vector<boost::shared_ptr<message_filters::SubscriberBase> > observation_subscribers_; ///< @brief Used for the observation message filters
     std::vector<boost::shared_ptr<tf::MessageFilterBase> > observation_notifiers_; ///< @brief Used to make sure that transforms are available for each sensor
     std::vector<boost::shared_ptr<costmap_2d::ObservationBuffer> > observation_buffers_; ///< @brief Used to store observations from various sensors
     std::vector<boost::shared_ptr<costmap_2d::ObservationBuffer> > marking_buffers_; ///< @brief Used to store observation buffers used for marking obstacles
     std::vector<boost::shared_ptr<costmap_2d::ObservationBuffer> > clearing_buffers_; ///< @brief Used to store observation buffers used for clearing obstacles
// Used only for testing purposes
     std::vector<costmap_2d::Observation> static_clearing_observations_, static_marking_observations_;
   

       
        
 //   costmap_2d::LayeredCostmap* layered_costmap_;

    int combination_method_;
    std::string global_frame_; ///< @brief The global frame for the costmap
    double max_obstacle_height_; ///< @brief Max Obstacle Height
    double transform_tolerance;
    bool rolling_window_, current_;
 //   tf::TransformListener* tf_;
 //   ros::NodeHandle nh_;
    //ros::NodeHandle g_nh_;
    //unsigned char* dynamic_objects;
    



   protected:

     bool getMarkingObservations(std::vector<costmap_2d::Observation>& marking_observations) const;

     bool getClearingObservations(std::vector<costmap_2d::Observation>& clearing_observations) const;

     virtual void setupDynamicReconfigure(ros::NodeHandle& nh);

     //costmap_2d::LayeredCostmap* layered_costmap_;
     //ros::NodeHandle* nh;
     std::string name_;
      
   private:

     float  polyX[4], polyY[4];
     bool  oddNodes_;
     bool inside_;
     int i_, j_, k_, l_;

     // initializing query related parameters
     std::string n;
     std_msgs::String object_category;
     ClientClass* client_class_;
     semantic_knowledgebase::ObjectList object_list_;
     
     bool inObjectBoundingBox(unsigned int x, unsigned int y);

     void reconfigureCB(costmap_2d::ObstaclePluginConfig &config, uint32_t level);
     dynamic_reconfigure::Server<costmap_2d::ObstaclePluginConfig> *dsrv_;  


};

}
#endif
