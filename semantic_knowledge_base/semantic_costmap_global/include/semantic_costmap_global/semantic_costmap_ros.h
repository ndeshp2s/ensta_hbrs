#ifndef SEMANTIC_COSTMAP_ROS
#define SEMANTIC_COSTMAP_ROS

#include "semantic_costmap_global/semantic_costmap.h"
#include <ros/ros.h>

class SemanticCostmapROS{

public:
	SemanticCostmapROS(const std_msgs::string& type);
	virtual ~SemanticCostmapROS();

	bool publishSemanticCostmap();
	bool prepareSemanticCostmap(); 

private:
	void subscribe();
	SemanticCostmap*  _semantic_costmap;

};


#endif