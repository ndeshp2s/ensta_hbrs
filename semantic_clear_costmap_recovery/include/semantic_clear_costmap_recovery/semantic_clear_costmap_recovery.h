#ifndef SEMANTIC_CLEAR_COSTMAP_RECOVERY_H_
#define SEMANTIC_CLEAR_COSTMAP_RECOVERY_H_
#include <nav_core/recovery_behavior.h>
#include <costmap_2d/costmap_2d_ros.h>
#include <tf/transform_listener.h>
#include <ros/ros.h>
#include <costmap_2d/costmap_layer.h>

#include <visualization_msgs/Marker.h>
#include <cmath>

namespace semantic_clear_costmap_recovery{

  class SemanticClearCostmapRecovery : public nav_core::RecoveryBehavior {
  public:
    SemanticClearCostmapRecovery();

    void initialize(std::string name, tf::TransformListener* tf, costmap_2d::Costmap2DROS* global_costmap, costmap_2d::Costmap2DROS* local_costmap);

    void runBehavior();
    ros::NodeHandle n;


  private:
    void clear(costmap_2d::Costmap2DROS* costmap);
    void clearMap(boost::shared_ptr<costmap_2d::CostmapLayer> costmap, double pose_x, double pose_y);
    costmap_2d::Costmap2DROS* global_costmap_, *local_costmap_;
    std::string name_;
    tf::TransformListener* tf_;
    bool initialized_;
    double reset_distance_;
    std::set<std::string> clearable_layers_; ///< Layer names which will be cleared.
  };
};
#endif
