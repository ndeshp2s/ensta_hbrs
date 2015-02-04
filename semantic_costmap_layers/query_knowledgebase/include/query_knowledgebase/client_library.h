#ifndef _CLIENT_LIBRARY_H
#define _CLIENT_LIBRARY_H

#include <ros/ros.h>
#include <std_msgs/String.h>
#include <semantic_knowledgebase/KBService.h>
#include <cstdlib>

namespace semantic_costmap_layers{

	class ClientClass{
	public:	
		ClientClass(const ros::NodeHandle &nh);
		~ClientClass();

		semantic_knowledgebase::ObjectList& call_service(std_msgs::String object_category_);

	private:	
		ros::ServiceClient client_;
		
        	ros::NodeHandle nh_;
		std_msgs::String object_category_; 
		semantic_knowledgebase::ObjectList object_list_;


	};




}

#endif
