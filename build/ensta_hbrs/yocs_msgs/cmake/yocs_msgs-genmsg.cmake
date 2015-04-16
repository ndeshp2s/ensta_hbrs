# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "yocs_msgs: 35 messages, 1 services")

set(MSG_I_FLAGS "-Iyocs_msgs:/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg;-Iyocs_msgs:/home/brsu/catkin_ws/devel/share/yocs_msgs/msg;-Iactionlib_msgs:/opt/ros/hydro/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/hydro/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/hydro/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(yocs_msgs_generate_messages ALL)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/NavigateToGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/NavigateToActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/NavigateToGoal.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/NavigationControlStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/Table.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorGoal.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/NavigateToResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/LocalizeActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/LocalizeGoal.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/NavigateToFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/WaypointList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/Waypoint.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/NavigateToActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/NavigateToResult.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/Wall.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/LocalizeGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/LocalizeResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/NavigateToAction.msg"
  "${MSG_I_FLAGS}"
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/NavigateToActionGoal.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/NavigateToGoal.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/NavigateToActionFeedback.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/NavigateToResult.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/NavigateToFeedback.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/NavigateToActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/LocalizeActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/LocalizeResult.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/ColumnList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/Column.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/Trajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/Waypoint.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/ARPairList.msg"
  "${MSG_I_FLAGS}"
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/ARPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorAction.msg"
  "${MSG_I_FLAGS}"
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorResult.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorGoal.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorActionFeedback.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorFeedback.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorActionGoal.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/LocalizeFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/Waypoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/TableList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/Table.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/LocalizeAction.msg"
  "${MSG_I_FLAGS}"
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/LocalizeGoal.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/LocalizeResult.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/LocalizeActionFeedback.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/LocalizeActionResult.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/LocalizeActionGoal.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/LocalizeFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/LocalizeActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/LocalizeFeedback.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/NavigateToActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/NavigateToFeedback.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorFeedback.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/ARPair.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/Column.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/NavigationControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/WallList.msg"
  "${MSG_I_FLAGS}"
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/Wall.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/TrajectoryList.msg"
  "${MSG_I_FLAGS}"
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/Waypoint.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/Trajectory.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorResult.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)

### Generating Services
_generate_srv_cpp(yocs_msgs
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/srv/WaypointListService.srv"
  "${MSG_I_FLAGS}"
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/Waypoint.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/WaypointList.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)

### Generating Module File
_generate_module_cpp(yocs_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(yocs_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(yocs_msgs_generate_messages yocs_msgs_generate_messages_cpp)

# target for backward compatibility
add_custom_target(yocs_msgs_gencpp)
add_dependencies(yocs_msgs_gencpp yocs_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS yocs_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/NavigateToGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/NavigateToActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/NavigateToGoal.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/NavigationControlStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/Table.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorGoal.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/NavigateToResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/LocalizeActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/LocalizeGoal.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/NavigateToFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/WaypointList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/Waypoint.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/NavigateToActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/NavigateToResult.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/Wall.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/LocalizeGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/LocalizeResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/NavigateToAction.msg"
  "${MSG_I_FLAGS}"
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/NavigateToActionGoal.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/NavigateToGoal.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/NavigateToActionFeedback.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/NavigateToResult.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/NavigateToFeedback.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/NavigateToActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/LocalizeActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/LocalizeResult.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/ColumnList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/Column.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/Trajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/Waypoint.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/ARPairList.msg"
  "${MSG_I_FLAGS}"
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/ARPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorAction.msg"
  "${MSG_I_FLAGS}"
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorResult.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorGoal.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorActionFeedback.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorFeedback.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorActionGoal.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/LocalizeFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/Waypoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/TableList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/Table.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/LocalizeAction.msg"
  "${MSG_I_FLAGS}"
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/LocalizeGoal.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/LocalizeResult.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/LocalizeActionFeedback.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/LocalizeActionResult.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/LocalizeActionGoal.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/LocalizeFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/LocalizeActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/LocalizeFeedback.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/NavigateToActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/NavigateToFeedback.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorFeedback.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/ARPair.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/Column.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/NavigationControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/WallList.msg"
  "${MSG_I_FLAGS}"
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/Wall.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/TrajectoryList.msg"
  "${MSG_I_FLAGS}"
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/Waypoint.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/Trajectory.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorResult.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)

### Generating Services
_generate_srv_lisp(yocs_msgs
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/srv/WaypointListService.srv"
  "${MSG_I_FLAGS}"
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/Waypoint.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/WaypointList.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)

### Generating Module File
_generate_module_lisp(yocs_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(yocs_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(yocs_msgs_generate_messages yocs_msgs_generate_messages_lisp)

# target for backward compatibility
add_custom_target(yocs_msgs_genlisp)
add_dependencies(yocs_msgs_genlisp yocs_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS yocs_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/NavigateToGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/NavigateToActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/NavigateToGoal.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/NavigationControlStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/Table.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorGoal.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/NavigateToResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/LocalizeActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/LocalizeGoal.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/NavigateToFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/WaypointList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/Waypoint.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/NavigateToActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/NavigateToResult.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/Wall.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/LocalizeGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/LocalizeResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/NavigateToAction.msg"
  "${MSG_I_FLAGS}"
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/NavigateToActionGoal.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/NavigateToGoal.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/NavigateToActionFeedback.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/NavigateToResult.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/NavigateToFeedback.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/NavigateToActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/LocalizeActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/LocalizeResult.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/ColumnList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/Column.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/Trajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/Waypoint.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/ARPairList.msg"
  "${MSG_I_FLAGS}"
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/ARPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorAction.msg"
  "${MSG_I_FLAGS}"
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorResult.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorGoal.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorActionFeedback.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorFeedback.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorActionGoal.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/LocalizeFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/Waypoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/TableList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/Table.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/LocalizeAction.msg"
  "${MSG_I_FLAGS}"
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/LocalizeGoal.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/LocalizeResult.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/LocalizeActionFeedback.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/LocalizeActionResult.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/LocalizeActionGoal.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/LocalizeFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/LocalizeActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/LocalizeFeedback.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/NavigateToActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/NavigateToFeedback.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorFeedback.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/ARPair.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/Column.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/NavigationControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/WallList.msg"
  "${MSG_I_FLAGS}"
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/Wall.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/TrajectoryList.msg"
  "${MSG_I_FLAGS}"
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/Waypoint.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/Trajectory.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/brsu/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorResult.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)

### Generating Services
_generate_srv_py(yocs_msgs
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/srv/WaypointListService.srv"
  "${MSG_I_FLAGS}"
  "/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/Waypoint.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/brsu/catkin_ws/src/ensta_hbrs/yocs_msgs/msg/WaypointList.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)

### Generating Module File
_generate_module_py(yocs_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(yocs_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(yocs_msgs_generate_messages yocs_msgs_generate_messages_py)

# target for backward compatibility
add_custom_target(yocs_msgs_genpy)
add_dependencies(yocs_msgs_genpy yocs_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS yocs_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(yocs_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
add_dependencies(yocs_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
add_dependencies(yocs_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
add_dependencies(yocs_msgs_generate_messages_cpp std_srvs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(yocs_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
add_dependencies(yocs_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
add_dependencies(yocs_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
add_dependencies(yocs_msgs_generate_messages_lisp std_srvs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(yocs_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
add_dependencies(yocs_msgs_generate_messages_py std_msgs_generate_messages_py)
add_dependencies(yocs_msgs_generate_messages_py geometry_msgs_generate_messages_py)
add_dependencies(yocs_msgs_generate_messages_py std_srvs_generate_messages_py)
