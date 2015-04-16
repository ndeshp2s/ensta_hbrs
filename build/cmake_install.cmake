# Install script for directory: /home/brsu/catkin_ws/src

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/home/brsu/catkin_ws/install")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/home/brsu/catkin_ws/install/_setup_util.py")
FILE(INSTALL DESTINATION "/home/brsu/catkin_ws/install" TYPE PROGRAM FILES "/home/brsu/catkin_ws/build/catkin_generated/installspace/_setup_util.py")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/home/brsu/catkin_ws/install/env.sh")
FILE(INSTALL DESTINATION "/home/brsu/catkin_ws/install" TYPE PROGRAM FILES "/home/brsu/catkin_ws/build/catkin_generated/installspace/env.sh")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/home/brsu/catkin_ws/install/setup.bash")
FILE(INSTALL DESTINATION "/home/brsu/catkin_ws/install" TYPE FILE FILES "/home/brsu/catkin_ws/build/catkin_generated/installspace/setup.bash")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/home/brsu/catkin_ws/install/setup.sh")
FILE(INSTALL DESTINATION "/home/brsu/catkin_ws/install" TYPE FILE FILES "/home/brsu/catkin_ws/build/catkin_generated/installspace/setup.sh")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/home/brsu/catkin_ws/install/setup.zsh")
FILE(INSTALL DESTINATION "/home/brsu/catkin_ws/install" TYPE FILE FILES "/home/brsu/catkin_ws/build/catkin_generated/installspace/setup.zsh")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/home/brsu/catkin_ws/install/.rosinstall")
FILE(INSTALL DESTINATION "/home/brsu/catkin_ws/install" TYPE FILE FILES "/home/brsu/catkin_ws/build/catkin_generated/installspace/.rosinstall")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/etc/catkin/profile.d" TYPE FILE FILES "/opt/ros/hydro/share/catkin/cmake/env-hooks/05.catkin_make.bash")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/etc/catkin/profile.d" TYPE FILE FILES "/opt/ros/hydro/share/catkin/cmake/env-hooks/05.catkin_make_isolated.bash")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/home/brsu/catkin_ws/build/gtest/cmake_install.cmake")
  INCLUDE("/home/brsu/catkin_ws/build/cmake_modules/cmake_install.cmake")
  INCLUDE("/home/brsu/catkin_ws/build/ensta_hbrs/cob_simulation/cob_bringup_sim/cmake_install.cmake")
  INCLUDE("/home/brsu/catkin_ws/build/ensta_hbrs/cob_simulation/cob_gazebo/cmake_install.cmake")
  INCLUDE("/home/brsu/catkin_ws/build/ensta_hbrs/cob_simulation/cob_gazebo_objects/cmake_install.cmake")
  INCLUDE("/home/brsu/catkin_ws/build/ensta_hbrs/cob_simulation/cob_simulation/cmake_install.cmake")
  INCLUDE("/home/brsu/catkin_ws/build/ensta_hbrs/ensta_bringup/cmake_install.cmake")
  INCLUDE("/home/brsu/catkin_ws/build/ensta_hbrs/ensta_bringup_sim/cmake_install.cmake")
  INCLUDE("/home/brsu/catkin_ws/build/ensta_hbrs/ensta_environments/ensta_gazebo_objects/cmake_install.cmake")
  INCLUDE("/home/brsu/catkin_ws/build/ensta_hbrs/ensta_environments/ensta_gazebo_worlds/cmake_install.cmake")
  INCLUDE("/home/brsu/catkin_ws/build/p2os/p2os_doc/cmake_install.cmake")
  INCLUDE("/home/brsu/catkin_ws/build/p2os/p2os_launch/cmake_install.cmake")
  INCLUDE("/home/brsu/catkin_ws/build/ensta_hbrs/pioneer3dx_navigation/cmake_install.cmake")
  INCLUDE("/home/brsu/catkin_ws/build/ensta_hbrs/semantic_costmap/semantic_costmap/cmake_install.cmake")
  INCLUDE("/home/brsu/catkin_ws/build/ensta_hbrs/semantic_navigation/semantic_knowledge_base/semantic_costmap_local/cmake_install.cmake")
  INCLUDE("/home/brsu/catkin_ws/build/ensta_hbrs/semantic_navigation/semantic_knowledge_base/semantic_knowledge_base/cmake_install.cmake")
  INCLUDE("/home/brsu/catkin_ws/build/ensta_hbrs/semantic_navigation/semantic_navigation/cmake_install.cmake")
  INCLUDE("/home/brsu/catkin_ws/build/ensta_hbrs/semantic_navigation/semantic_planner/semantic_planner/cmake_install.cmake")
  INCLUDE("/home/brsu/catkin_ws/build/ensta_hbrs/semantic_navigation/semantic_planner/semantic_planner_local/cmake_install.cmake")
  INCLUDE("/home/brsu/catkin_ws/build/ensta_hbrs/semanticbase_navigation/cmake_install.cmake")
  INCLUDE("/home/brsu/catkin_ws/build/p2os/p2os_msgs/cmake_install.cmake")
  INCLUDE("/home/brsu/catkin_ws/build/ensta_hbrs/pioneer3dx_2dnav/cmake_install.cmake")
  INCLUDE("/home/brsu/catkin_ws/build/ensta_hbrs/pioneer3dx_apps/cmake_install.cmake")
  INCLUDE("/home/brsu/catkin_ws/build/ua_ros_p3dx/p3dx_control/cmake_install.cmake")
  INCLUDE("/home/brsu/catkin_ws/build/ensta_hbrs/cob_simulation/cob_gazebo_worlds/cmake_install.cmake")
  INCLUDE("/home/brsu/catkin_ws/build/ensta_hbrs/rospy_message_converter/cmake_install.cmake")
  INCLUDE("/home/brsu/catkin_ws/build/ensta_hbrs/ensta_robots/cmake_install.cmake")
  INCLUDE("/home/brsu/catkin_ws/build/p2os/p2os_driver/cmake_install.cmake")
  INCLUDE("/home/brsu/catkin_ws/build/p2os/p2os_teleop/cmake_install.cmake")
  INCLUDE("/home/brsu/catkin_ws/build/ensta_hbrs/pioneer3dx_teleop/cmake_install.cmake")
  INCLUDE("/home/brsu/catkin_ws/build/ua_ros_p3dx/p3dx_description/cmake_install.cmake")
  INCLUDE("/home/brsu/catkin_ws/build/ua_ros_p3dx/p3dx_gazebo/cmake_install.cmake")
  INCLUDE("/home/brsu/catkin_ws/build/p2os/p2os_urdf/cmake_install.cmake")
  INCLUDE("/home/brsu/catkin_ws/build/ensta_hbrs/using_markers/cmake_install.cmake")
  INCLUDE("/home/brsu/catkin_ws/build/ensta_hbrs/rosbase_navigation/cmake_install.cmake")
  INCLUDE("/home/brsu/catkin_ws/build/ensta_hbrs/semantic_clear_costmap_recovery/cmake_install.cmake")
  INCLUDE("/home/brsu/catkin_ws/build/ensta_hbrs/semantic_navigation/semantic_knowledge_base/semantic_costmap_global/cmake_install.cmake")
  INCLUDE("/home/brsu/catkin_ws/build/ensta_hbrs/semantic_navigation/semantic_layered_costmap/cmake_install.cmake")
  INCLUDE("/home/brsu/catkin_ws/build/ensta_hbrs/semantic_navigation/semantic_planner/semantic_planner_global/cmake_install.cmake")
  INCLUDE("/home/brsu/catkin_ws/build/ensta_hbrs/semantic_navigation/semantic_navigation_coordinator/cmake_install.cmake")
  INCLUDE("/home/brsu/catkin_ws/build/ensta_hbrs/simple_layers/cmake_install.cmake")
  INCLUDE("/home/brsu/catkin_ws/build/ensta_hbrs/yocs_msgs/cmake_install.cmake")
  INCLUDE("/home/brsu/catkin_ws/build/ensta_hbrs/semantic_knowledgebase/cmake_install.cmake")
  INCLUDE("/home/brsu/catkin_ws/build/ensta_hbrs/semantic_costmap/query_knowledgebase/cmake_install.cmake")
  INCLUDE("/home/brsu/catkin_ws/build/ensta_hbrs/semantic_costmap/layers/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

IF(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
ELSE(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
ENDIF(CMAKE_INSTALL_COMPONENT)

FILE(WRITE "/home/brsu/catkin_ws/build/${CMAKE_INSTALL_MANIFEST}" "")
FOREACH(file ${CMAKE_INSTALL_MANIFEST_FILES})
  FILE(APPEND "/home/brsu/catkin_ws/build/${CMAKE_INSTALL_MANIFEST}" "${file}\n")
ENDFOREACH(file)
