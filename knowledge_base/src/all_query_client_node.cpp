#include <ros/ros.h>
#include <knowledge_base/ObjectInformationAll.h>
#include <cstdlib>

class ClientClass
{
    public:
        ClientClass(const ros::NodeHandle &nh):
            nh_(nh)
        {
            client_ = nh_.serviceClient<knowledge_base::ObjectInformationAll>("object_information_all");
	
        }

        ~ClientClass()
        {
        }

        void call_service()
        {
            if(client_.exists()) 
	    {
		ROS_INFO("server found.....");
		knowledge_base::ObjectInformationAll object_info_all;
		object_info_all.request.object_category_request = "structural_object";

		if(client_.call(object_info_all)) {
                    ROS_INFO_STREAM("Response recieved :" << object_info_all.response.object_list);
                } else {
                    ROS_INFO("Response failed.....");
                }
                

                
            } 

	    else 
	    {
                    ROS_INFO("server is not running.....");
            }
        }

    private:
        ros::ServiceClient client_;
        ros::NodeHandle nh_;
};

int main(int argc, char *argv[])
{
    /**
     * Initilization of node
     **/
    ros::init(argc, argv, "all_query_client_node");

    /**
     * Initilization of node handle
     **/
    ros::NodeHandle nh;
    
    /**
     * Printing Information message on the console.
     **/
    ROS_INFO("all_query_client_node is now running");

    ClientClass client_class(nh);

    client_class.call_service();

    /**
     * Running a thread to keep spinning untill the user kills the node.
     **/

    return 0;
}
