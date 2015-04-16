# Install script for directory: /home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/yocs_msgs/msg" TYPE FILE FILES
    "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/ARPair.msg"
    "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/ARPairList.msg"
    "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/Wall.msg"
    "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/WallList.msg"
    "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/Column.msg"
    "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/ColumnList.msg"
    "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/NavigationControl.msg"
    "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/NavigationControlStatus.msg"
    "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/Table.msg"
    "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/TableList.msg"
    "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/Trajectory.msg"
    "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/TrajectoryList.msg"
    "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/Waypoint.msg"
    "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/WaypointList.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/yocs_msgs/srv" TYPE FILE FILES "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/srv/WaypointListService.srv")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/yocs_msgs/action" TYPE FILE FILES
    "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/action/NavigateTo.action"
    "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/action/DockingInteractor.action"
    "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/action/Localize.action"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/yocs_msgs/msg" TYPE FILE FILES
    "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/NavigateToAction.msg"
    "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/NavigateToActionGoal.msg"
    "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/NavigateToActionResult.msg"
    "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/NavigateToActionFeedback.msg"
    "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/NavigateToGoal.msg"
    "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/NavigateToResult.msg"
    "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/NavigateToFeedback.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/yocs_msgs/msg" TYPE FILE FILES
    "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorAction.msg"
    "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorActionGoal.msg"
    "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorActionResult.msg"
    "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorActionFeedback.msg"
    "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorGoal.msg"
    "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorResult.msg"
    "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorFeedback.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/yocs_msgs/msg" TYPE FILE FILES
    "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/LocalizeAction.msg"
    "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/LocalizeActionGoal.msg"
    "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/LocalizeActionResult.msg"
    "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/LocalizeActionFeedback.msg"
    "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/LocalizeGoal.msg"
    "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/LocalizeResult.msg"
    "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/LocalizeFeedback.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/yocs_msgs/cmake" TYPE FILE FILES "/home/brsu/catkin_ws/build/ensta_hbrs/yocs_msgs/catkin_generated/installspace/yocs_msgs-msg-paths.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/brsu/catkin_ws/devel/include/yocs_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/brsu/catkin_ws/devel/share/common-lisp/ros/yocs_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/brsu/catkin_ws/devel/lib/python2.7/dist-packages/yocs_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/brsu/catkin_ws/devel/lib/python2.7/dist-packages/yocs_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/brsu/catkin_ws/build/ensta_hbrs/yocs_msgs/catkin_generated/installspace/yocs_msgs.pc")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/yocs_msgs/cmake" TYPE FILE FILES "/home/brsu/catkin_ws/build/ensta_hbrs/yocs_msgs/catkin_generated/installspace/yocs_msgs-msg-extras.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/yocs_msgs/cmake" TYPE FILE FILES
    "/home/brsu/catkin_ws/build/ensta_hbrs/yocs_msgs/catkin_generated/installspace/yocs_msgsConfig.cmake"
    "/home/brsu/catkin_ws/build/ensta_hbrs/yocs_msgs/catkin_generated/installspace/yocs_msgsConfig-version.cmake"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/yocs_msgs" TYPE FILE FILES "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/package.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

