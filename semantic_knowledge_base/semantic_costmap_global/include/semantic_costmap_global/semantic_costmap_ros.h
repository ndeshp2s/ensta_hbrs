#ifndef _SEMANTIC_COSTMAP_ROS_
#define _SEMANTIC_COSTMAP_ROS_

#include "semantic_costmap_global/semantic_costmap.h"
#include "semantic_costmap_global/inflation_semantic_costmap.h"
#include <std_msgs/String.h>
#include <ros/ros.h>

class SemanticCostmapROS{

public:
	SemanticCostmapROS(const std_msgs::String& type);
	virtual ~SemanticCostmapROS();

	bool publishSemanticCostmap();
	bool prepareSemanticCostmap(); 

private:
	void subscribe();
	SemanticCostmap*  _semantic_costmap;

};


#endif