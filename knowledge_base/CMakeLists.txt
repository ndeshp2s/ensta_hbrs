cmake_minimum_required(VERSION 2.8.3)
project(knowledge_base)

find_package(catkin REQUIRED COMPONENTS 
   geometry_msgs
   roscpp
   rospy
   std_msgs
   message_generation
)

catkin_python_setup()

add_message_files(
   FILES
   ObjectInstance.msg
   BoundingBox.msg
   GeometricProperties.msg
   SemanticProperties.msg
   Object.msg
   ObjectList.msg
)

add_service_files(
  FILES
  ObjectInformationAll.srv
  
)

generate_messages(
   DEPENDENCIES
   geometry_msgs
   std_msgs
)

catkin_package(
    INCLUDE_DIRS include
    LIBRARIES ${PROJECT_NAME}
    CATKIN_DEPENDS 
      roscpp 
      message_runtime 
      roscpp 
      rospy 
      std_msgs
)

include_directories(include
  ${catkin_INCLUDE_DIRS}
)

add_executable(all_query_client_node src/all_query_client_node.cpp)
target_link_libraries(all_query_client_node ${catkin_LIBRARIES})

