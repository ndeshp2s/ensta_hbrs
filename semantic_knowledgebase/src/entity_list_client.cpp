#include <ros/ros.h>
#include <semantic_knowledgebase/KBService.h>
#include <cstdlib>


int main(int argc, char **argv)
{

    ros::init(argc, argv, "entity_list_client");
    ros::NodeHandle n;

    ROS_INFO("entity_list_client is now running");
    
    ros::ServiceClient client = n.serviceClient<semantic_knowledgebase::KBService>("entity_list");
    semantic_knowledgebase::KBService object_info;
    
    if(client.exists()) 
    {
        ROS_INFO("server found.....");
        object_info.request.object_category_request = "structural_objects";
        if(client.call(object_info))
	{
		ROS_INFO_STREAM("Response recieved :" << object_info.response.object_list);
	}
	else 
	{
            ROS_INFO("Response failed.....");
        }
    } 
    else 
    {
        ROS_INFO("server is not running.....");
    }


 
   return 0;
}
