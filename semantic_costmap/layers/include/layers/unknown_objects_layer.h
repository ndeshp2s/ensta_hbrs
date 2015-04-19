#ifndef UNKNOWN_OBJECTS_LAYER_H_
#define UNKNOWN_OBJECTS_LAYER_H_
 
#include <ros/ros.h>
#include <costmap_2d/costmap_2d.h>
#include <costmap_2d/costmap_layer.h>
#include <costmap_2d/layered_costmap.h>
#include <costmap_2d/GenericPluginConfig.h>
#include <dynamic_reconfigure/server.h>
#include <layers/static_objects.h>
#include <layers/dynamic_objects.h>
#include <layers/inflate_objects.h>
#include <nav_msgs/OccupancyGrid.h>
#include <map_msgs/OccupancyGridUpdate.h>


namespace semantic_costmap
{
      
  class UnknownObjectsLayer : public costmap_2d::CostmapLayer
  {
  public:
     UnknownObjectsLayer() : unknown_objects_costmap_() 
     {
       costmap_ = NULL;
       unknown_objects_costmap_.setDefaultValue(0);
     }

     virtual ~UnknownObjectsLayer();

     virtual void onInitialize();
    
     virtual void activate();
     virtual void deactivate();
     virtual void reset();

     void incomingMap(const nav_msgs::OccupancyGridConstPtr new_map);
     
     virtual void updateBounds(double robot_x, double robot_y, double robot_yaw, double* min_x, double* min_y, double* max_x, double* max_y);
     virtual void updateCosts(costmap_2d::Costmap2D& master_grid, int min_i, int min_j, int max_i, int max_j);

     void updateMax(costmap_2d::Costmap2D& master_grid, int min_i, int min_j, int max_i, int max_j);

     virtual void setupDynamicReconfigure(ros::NodeHandle& nh);

     void matchSize();

     StaticObjects static_objects_;
     DynamicObjects dynamic_objects_;
     InflateObjects inflate_objects_;

     std::string object_type;

     ros::Subscriber map_sub_;
     bool map_received_;
     bool has_updated_data_;
     unsigned int x_,y_,width_,height_;

     double minx_, miny_, maxx_, maxy_;

     int combination_method_;
     std::string global_frame_;
     bool rolling_window_;
    // costmap_2d::Costmap2D structural_layer_costmap;
  //   nav_msgs::OccupancyGridConstPtr map;
   
     dynamic_reconfigure::Server<costmap_2d::GenericPluginConfig> *dsrv_;
     
     void reconfigureCB(costmap_2d::GenericPluginConfig &config, uint32_t level);

  private:
    costmap_2d::Costmap2D unknown_objects_costmap_; 
  };
}
#endif
