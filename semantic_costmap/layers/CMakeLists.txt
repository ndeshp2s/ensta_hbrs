cmake_minimum_required(VERSION 2.8.3)
project(layers)

find_package(catkin REQUIRED COMPONENTS
  costmap_2d
  dynamic_reconfigure
  roscpp 
  geometry_msgs
  laser_geometry
  map_msgs
  message_filters
  message_generation
  nav_msgs
  roscpp
  sensor_msgs
  std_msgs
  tf
  query_knowledgebase
  semantic_knowledgebase
)


include_directories(include)
include_directories(
  ${catkin_INCLUDE_DIRS}
)

catkin_package(
  INCLUDE_DIRS include
  CATKIN_DEPENDS 
    costmap_2d 
    dynamic_reconfigure 
    roscpp
    geometry_msgs
    laser_geometry
    map_msgs
    message_runtime
    nav_msgs
    roscpp
    sensor_msgs
    std_msgs
    tf
    message_filters
    semantic_knowledgebase
)


include_directories(include)
include_directories(
  ${catkin_INCLUDE_DIRS}
  ${Boost_INCLUDE_DIRS}
)

add_library(observation_buffer src/observation_buffer.cpp)

add_library(static_objects src/static_objects.cpp)
target_link_libraries(static_objects
   ${catkin_LIBRARIES}
   ${BOOST_LIBRARIES}
   query_knowledgebase
)

add_library(dynamic_objects src/dynamic_objects.cpp)
target_link_libraries(dynamic_objects
   ${catkin_LIBRARIES}
   ${BOOST_LIBRARIES}
)

add_library(inflate_objects src/inflate_objects.cpp)
target_link_libraries(inflate_objects
   ${catkin_LIBRARIES}
   ${BOOST_LIBRARIES}
)

add_library(structural_objects_layer src/structural_objects_layer.cpp)
target_link_libraries(structural_objects_layer
   ${catkin_LIBRARIES}
   ${BOOST_LIBRARIES}
   static_objects
   dynamic_objects
   inflate_objects
)



add_library(heavy_objects_layer src/heavy_objects_layer.cpp)
target_link_libraries(heavy_objects_layer
   ${catkin_LIBRARIES}
   ${BOOST_LIBRARIES}
   static_objects
   dynamic_objects
   inflate_objects
)

add_library(light_objects_layer src/light_objects_layer.cpp)
target_link_libraries(light_objects_layer
   ${catkin_LIBRARIES}
   ${BOOST_LIBRARIES}
   static_objects
   dynamic_objects
   inflate_objects
)







#add_library(static_layer src/static_layer.cpp)
#target_link_libraries(static_layer
#   ${catkin_LIBRARIES}
#)

#add_library(obstacles src/obstacles.cpp)
#target_link_libraries(obstacles
#   ${catkin_LIBRARIES}
#   ${BOOST_LIBRARIES}
# )

#add_library(structural_layer src/structural_layer.cpp)
#target_link_libraries(structural_layer
#   ${catkin_LIBRARIES}
#   ${BOOST_LIBRARIES}
#)




#add_executable(obstacles_node src/obstacles_node.cpp)
#target_link_libraries(obstacles_node ${roscpp_LIBRARIES} obstacles)

#add_executable(initialize_node src/initialize_node.cpp)
#target_link_libraries(initialize_node ${roscpp_LIBRARIES} static_layer)

