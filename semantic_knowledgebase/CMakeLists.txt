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


## Generate actions in the 'action' folder
# add_action_files(
#   FILES
#   Action1.action
#   Action2.action
# )
add_service_files(
   FILES
   AddTwoInts.srv
   KBService.srv
   
 )
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
    CATKIN_DEPENDS 
      roscpp 
      message_runtime 
      roscpp 
      rospy 
      std_msgs
)




