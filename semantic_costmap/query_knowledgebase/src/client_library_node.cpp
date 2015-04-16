// Include the ROS C++ APIs
#include <ros/ros.h>

// Include the declaration of our library function
#include <query_knowledgebase/client_library.h>

// Standard C++ entry point
int main(int argc, char** argv) {
  // Initialize ROS
  ros::init(argc, argv, "client_library_node");
  ros::NodeHandle nh;
  std_msgs::String object_category;
  object_category.data = "structural_object";

  ROS_INFO("client_library_node is now running");

  // Call our library function
  semantic_costmap_layers::ClientClass* client_class = new semantic_costmap_layers::ClientClass(nh);
  semantic_knowledgebase::ObjectList object_list_ = client_class->call_service(object_category);
  ROS_INFO_STREAM(object_list_);


  // Wait for SIGINT/Ctrl-C
  ros::spin();
  return 0;
}
