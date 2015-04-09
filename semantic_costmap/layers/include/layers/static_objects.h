#ifndef STATIC_OBJECTS_H_
#define STATIC_OBJECTS_H_


#include <costmap_2d/costmap_layer.h>
#include <costmap_2d/layered_costmap.h>
#include <costmap_2d/costmap_math.h>
#include <costmap_2d/GenericPluginConfig.h>
#include <dynamic_reconfigure/server.h>
#include <nav_msgs/OccupancyGrid.h>
#include <query_knowledgebase/client_library.h>

#include <std_msgs/String.h>
#include <string>


namespace semantic_costmap
{
  
  class StaticObjects : public costmap_2d::CostmapLayer
  {
  public:
     StaticObjects();

     virtual void onInitialize();
    
     virtual ~StaticObjects();
       
     virtual void activate();
    
     virtual void deactivate();
    
     virtual void reset();
     
     virtual void updateBounds(double robot_x, double robot_y, double robot_yaw, double* min_x, double* min_y, double* max_x,
double* max_y);
     
     virtual void updateCosts(costmap_2d::Costmap2D& master_grid, int min_i, int min_j, int max_i, int max_j);
  
     virtual void matchSize();

     virtual void setupDynamicReconfigure(ros::NodeHandle& nh);
     void incomingMap(const nav_msgs::OccupancyGrid& map, std::string name, unsigned char* costmap);


  private:
     
     void reconfigureCB(costmap_2d::GenericPluginConfig &config, uint32_t level);
     unsigned char interpretValue(unsigned char value, unsigned int x, unsigned int y);
     bool inObjectBoundingBox(unsigned int x, unsigned int y);

     std::string global_frame_; ///< @brief The global frame for the costmap
     bool subscribe_to_updates_;
     bool map_received_;
     bool has_updated_data_;
     unsigned int x_,y_,width_,height_;
     bool track_unknown_space_;
     bool use_maximum_;
     bool trinary_costmap_;
     ros::Subscriber map_sub_, map_update_sub_;
     unsigned char lethal_threshold_, unknown_cost_value_;
     int temp_lethal_threshold, temp_unknown_cost_value;

     float  polyX[4], polyY[4];
     bool  oddNodes_;
     bool inside_;
     int i_, j_, k_, l_;

     // initializing query related parameters
     std::string n;
     std_msgs::String object_category;
     ClientClass* client_class_;
     semantic_knowledgebase::ObjectList object_list_;
     
     dynamic_reconfigure::Server<costmap_2d::GenericPluginConfig> *dsrv_;

  };
}
#endif
