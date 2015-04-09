
#include <query_knowledgebase/client_library.h>

using namespace semantic_costmap;

ClientClass::ClientClass(const ros::NodeHandle &nh):nh_(nh) {
	client_ = nh_.serviceClient<semantic_knowledgebase::KBService>("object_information_all");


}

ClientClass::~ClientClass() {}


semantic_knowledgebase::ObjectList& ClientClass::call_service(std_msgs::String object_category_)
{
	if(client_.exists()) 
        {
		ROS_INFO("server found.....");
		semantic_knowledgebase::KBService object_info;
		object_info.request.object_category_request = object_category_.data;

		if(client_.call(object_info)) {
		    object_list_ = object_info.response.object_list;
                    ROS_INFO_STREAM("Response recieved");

                } else {
                    ROS_INFO("Response failed.....");
                }
                
         
                
        } 

	else 
	{
                ROS_INFO("server is not running.....");
        }

	return object_list_;

}
