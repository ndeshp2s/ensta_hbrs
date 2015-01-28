cmake_minimum_required(VERSION 2.8.3)
project(semantic_knowledgebase)

find_package(catkin REQUIRED COMPONENTS 
   geometry_msgs
   roscpp
   rospy
   std_msgs
   message_generation
)

catkin_python_setup()

add_message_files(
   DIRECTORY msg
   FILES
   Object.msg
   ObjectList.msg
   ObjectInstance.msg
   GeometricProperties.msg
   SemanticProperties.msg
   BoundingBox.msg

   
)

add_service_files(
   FILES
   AddTwoInts.srv
   KBService.srv
   
 )

## Generate actions in the 'action' folder
# add_action_files(
#   FILES
#   Action1.action
#   Action2.action
# )

## Generate added messages and services with any dependencies listed here
 generate_messages(
   DEPENDENCIES
   geometry_msgs
   std_msgs
)

###################################
## catkin specific configuration ##
###################################
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


#add_executable(add_two_ints_server src/add_two_ints_server.cpp)
#target_link_libraries(add_two_ints_server ${catkin_LIBRARIES})
#add_dependencies(add_two_ints_server semantic_knowledgebase_gencpp)

#add_executable(add_two_ints_client src/add_two_ints_client.cpp)
#target_link_libraries(add_two_ints_client ${catkin_LIBRARIES})
#add_dependencies(add_two_ints_client semantic_knowledgebase_gencpp)

add_executable(entity_list_client src/entity_list_client.cpp)
target_link_libraries(entity_list_client ${catkin_LIBRARIES})


