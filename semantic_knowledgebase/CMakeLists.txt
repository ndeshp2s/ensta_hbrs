cmake_minimum_required(VERSION 2.8.3)
project(semantic_knowledgebase)

find_package(catkin REQUIRED COMPONENTS 
   actionlib 
   rospy 
   geometry_msgs 
   message_generation
)

catkin_python_setup()

################################################
## Declare ROS messages, services and actions ##
################################################

## Generate messages in the 'msg' folder
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

## Generate services in the 'srv' folder
# add_service_files(
#   FILES
#   Service1.srv
#   Service2.srv
# )

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
 )

###################################
## catkin specific configuration ##
###################################
#catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES semantic_knowledgeBase
#  CATKIN_DEPENDS other_catkin_pkg
#  DEPENDS system_lib
#)

###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
# include_directories(include)

## Declare a cpp library
# add_library(semantic_knowledgeBase
#   src/${PROJECT_NAME}/semantic_knowledgeBase.cpp
# )

## Declare a cpp executable
# add_executable(semantic_knowledgeBase_node src/semantic_knowledgeBase_node.cpp)

## Add cmake target dependencies of the executable/library
## as an example, message headers may need to be generated before nodes
# add_dependencies(semantic_knowledgeBase_node semantic_knowledgeBase_generate_messages_cpp)

## Specify libraries to link a library or executable target against
# target_link_libraries(semantic_knowledgeBase_node
#   ${catkin_LIBRARIES}
# )

#############
## Install ##
#############
catkin_package(
  CATKIN_DEPENDS message_runtime 
)
## Mark executable scripts (Python etc.) for installation
## in contrast to setup.py, you can choose the destination
 install(PROGRAMS
   scripts/wall_publisher_from_file.py
   DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
 )

## Mark executables and/or libraries for installation
# install(TARGETS semantic_knowledgeBase semantic_knowledgeBase_node
#   ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
#   LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
#   RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
# )

## Mark cpp header files for installation
# install(DIRECTORY include/${PROJECT_NAME}/
#   DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
#   FILES_MATCHING PATTERN "*.h"
#   PATTERN ".svn" EXCLUDE
# )

## Mark other files for installation (e.g. launch and bag files, etc.)
# install(FILES
#   # myfile1
#   # myfile2
#   DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
# )

#############
## Testing ##
#############

## Add gtest based cpp test target and link libraries
# catkin_add_gtest(${PROJECT_NAME}-test test/test_semantic_knowledgeBase.cpp)
# if(TARGET ${PROJECT_NAME}-test)
#   target_link_libraries(${PROJECT_NAME}-test ${PROJECT_NAME})
# endif()

## Add folders to be run by python nosetests
# catkin_add_nosetests(test)
