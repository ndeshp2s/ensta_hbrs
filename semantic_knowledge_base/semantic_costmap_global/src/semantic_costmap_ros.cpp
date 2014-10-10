#include "semantic_costmap_global/semantic_costmap_ros.h"

SemanticCostmapROS::SemanticCostmapROS(const std_msgs::string& type){

   if (type == "InflationSemanticCostmap"){
		_semantic_costmap = new InflationSemanticCostmap();
	}
	else{
		ROS_ERROR("Please specify the costmap type");
	} 
}

bool SemanticCostmapROS::prepareSemanticCostmap(){

	_semantic_costmap->buildSemanticCostmap();
}

