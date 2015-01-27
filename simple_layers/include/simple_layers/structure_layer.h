#ifndef STRUCTURE_LAYER_H_
#define STRUCTURE_LAYER_H_
#include <ros/ros.h>
#include <costmap_2d/layered_costmap.h>
#include <costmap_2d/costmap_layer.h>
#include <costmap_2d/GenericPluginConfig.h>
#include <dynamic_reconfigure/server.h>
#include <nav_msgs/OccupancyGrid.h>
#include <map_msgs/OccupancyGridUpdate.h>
#include <message_filters/subscriber.h>
 
namespace simple_layer_namespace
{
 
 class StructureLayer : public costmap_2d::CostmapLayer
 {
 public:
   StructureLayer();
   virtual ~StructureLayer();
   virtual void onInitialize();
   virtual void activate();
   virtual void deactivate();
   virtual void reset();

   virtual void updateBounds(double origin_x, double origin_y, double origin_yaw, double* min_x, double* min_y, double* max_x,
                              double* max_y);
   virtual void updateCosts(costmap_2d::Costmap2D& master_grid, int min_i, int min_j, int max_i, int max_j);
 
   virtual void matchSize();
 
 private:

   void incomingMap(const nav_msgs::OccupancyGridConstPtr& new_map);
   void incomingUpdate(const map_msgs::OccupancyGridUpdateConstPtr& update);
   void reconfigureCB(costmap_2d::GenericPluginConfig &config, uint32_t level);
   unsigned char interpretValue(unsigned char value);
   unsigned char interpretValueMy(unsigned char value, unsigned int x, unsigned int y);
   bool inFootprint(unsigned int x, unsigned int y);

   std::string global_frame_; ///< @brief The global frame for the costmap
   bool subscribe_to_updates_;
   bool map_received_;
   bool has_updated_data_;
   unsigned int x_,y_,width_,height_;
   float  polyX[4], polyY[4];
   bool pointInPolygon();
   bool track_unknown_space_;
   bool use_maximum_;
   bool trinary_costmap_;
   ros::Subscriber map_sub_, map_update_sub_;

   unsigned char lethal_threshold_, unknown_cost_value_;

   dynamic_reconfigure::Server<costmap_2d::GenericPluginConfig> *dsrv_;

   
 };
}
#endif
 
