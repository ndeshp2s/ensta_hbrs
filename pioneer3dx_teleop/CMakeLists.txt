cmake_minimum_required(VERSION 2.8.3)
project(pioneer3dx_teleop)

find_package(catkin REQUIRED COMPONENTS geometry_msgs std_msgs sensor_msgs tf)

catkin_package(
	CATKIN_DEPENDS geometry_msgs sensor_msgs tf std_msgs
    	LIBRARIES lib
)

include_directories(include ${catkin_INCLUDE_DIRS})



add_executable(pioneer3dx_teleop src/pioneer3dx_teleop.cpp)
target_link_libraries(pioneer3dx_teleop ${catkin_LIBRARIES})

install(TARGETS pioneer3dx_teleop
  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)
