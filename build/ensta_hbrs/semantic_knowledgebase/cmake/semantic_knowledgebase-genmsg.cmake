# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "semantic_knowledgebase: 6 messages, 2 services")

set(MSG_I_FLAGS "-Isemantic_knowledgebase:/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg;-Igeometry_msgs:/opt/ros/hydro/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/hydro/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(semantic_knowledgebase_generate_messages ALL)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(semantic_knowledgebase
  "/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/GeometricProperties.msg"
  "${MSG_I_FLAGS}"
  "/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/BoundingBox.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/semantic_knowledgebase
)
_generate_msg_cpp(semantic_knowledgebase
  "/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/semantic_knowledgebase
)
_generate_msg_cpp(semantic_knowledgebase
  "/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/SemanticProperties.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/semantic_knowledgebase
)
_generate_msg_cpp(semantic_knowledgebase
  "/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/ObjectList.msg"
  "${MSG_I_FLAGS}"
  "/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/GeometricProperties.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/SemanticProperties.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/ObjectInstance.msg;/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/BoundingBox.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg;/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/Object.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/semantic_knowledgebase
)
_generate_msg_cpp(semantic_knowledgebase
  "/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/ObjectInstance.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/semantic_knowledgebase
)
_generate_msg_cpp(semantic_knowledgebase
  "/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/BoundingBox.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/SemanticProperties.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/ObjectInstance.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg;/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/GeometricProperties.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/semantic_knowledgebase
)

### Generating Services
_generate_srv_cpp(semantic_knowledgebase
  "/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/semantic_knowledgebase
)
_generate_srv_cpp(semantic_knowledgebase
  "/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/srv/KBService.srv"
  "${MSG_I_FLAGS}"
  "/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/GeometricProperties.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/SemanticProperties.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/ObjectList.msg;/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/ObjectInstance.msg;/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/BoundingBox.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg;/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/Object.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/semantic_knowledgebase
)

### Generating Module File
_generate_module_cpp(semantic_knowledgebase
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/semantic_knowledgebase
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(semantic_knowledgebase_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(semantic_knowledgebase_generate_messages semantic_knowledgebase_generate_messages_cpp)

# target for backward compatibility
add_custom_target(semantic_knowledgebase_gencpp)
add_dependencies(semantic_knowledgebase_gencpp semantic_knowledgebase_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS semantic_knowledgebase_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(semantic_knowledgebase
  "/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/GeometricProperties.msg"
  "${MSG_I_FLAGS}"
  "/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/BoundingBox.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/semantic_knowledgebase
)
_generate_msg_lisp(semantic_knowledgebase
  "/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/semantic_knowledgebase
)
_generate_msg_lisp(semantic_knowledgebase
  "/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/SemanticProperties.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/semantic_knowledgebase
)
_generate_msg_lisp(semantic_knowledgebase
  "/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/ObjectList.msg"
  "${MSG_I_FLAGS}"
  "/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/GeometricProperties.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/SemanticProperties.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/ObjectInstance.msg;/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/BoundingBox.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg;/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/Object.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/semantic_knowledgebase
)
_generate_msg_lisp(semantic_knowledgebase
  "/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/ObjectInstance.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/semantic_knowledgebase
)
_generate_msg_lisp(semantic_knowledgebase
  "/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/BoundingBox.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/SemanticProperties.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/ObjectInstance.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg;/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/GeometricProperties.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/semantic_knowledgebase
)

### Generating Services
_generate_srv_lisp(semantic_knowledgebase
  "/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/semantic_knowledgebase
)
_generate_srv_lisp(semantic_knowledgebase
  "/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/srv/KBService.srv"
  "${MSG_I_FLAGS}"
  "/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/GeometricProperties.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/SemanticProperties.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/ObjectList.msg;/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/ObjectInstance.msg;/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/BoundingBox.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg;/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/Object.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/semantic_knowledgebase
)

### Generating Module File
_generate_module_lisp(semantic_knowledgebase
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/semantic_knowledgebase
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(semantic_knowledgebase_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(semantic_knowledgebase_generate_messages semantic_knowledgebase_generate_messages_lisp)

# target for backward compatibility
add_custom_target(semantic_knowledgebase_genlisp)
add_dependencies(semantic_knowledgebase_genlisp semantic_knowledgebase_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS semantic_knowledgebase_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(semantic_knowledgebase
  "/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/GeometricProperties.msg"
  "${MSG_I_FLAGS}"
  "/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/BoundingBox.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/semantic_knowledgebase
)
_generate_msg_py(semantic_knowledgebase
  "/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/semantic_knowledgebase
)
_generate_msg_py(semantic_knowledgebase
  "/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/SemanticProperties.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/semantic_knowledgebase
)
_generate_msg_py(semantic_knowledgebase
  "/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/ObjectList.msg"
  "${MSG_I_FLAGS}"
  "/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/GeometricProperties.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/SemanticProperties.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/ObjectInstance.msg;/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/BoundingBox.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg;/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/Object.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/semantic_knowledgebase
)
_generate_msg_py(semantic_knowledgebase
  "/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/ObjectInstance.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/semantic_knowledgebase
)
_generate_msg_py(semantic_knowledgebase
  "/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/BoundingBox.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/SemanticProperties.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/ObjectInstance.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg;/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/GeometricProperties.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/semantic_knowledgebase
)

### Generating Services
_generate_srv_py(semantic_knowledgebase
  "/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/semantic_knowledgebase
)
_generate_srv_py(semantic_knowledgebase
  "/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/srv/KBService.srv"
  "${MSG_I_FLAGS}"
  "/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/GeometricProperties.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/SemanticProperties.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/ObjectList.msg;/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/ObjectInstance.msg;/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/BoundingBox.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg;/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/msg/Object.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/semantic_knowledgebase
)

### Generating Module File
_generate_module_py(semantic_knowledgebase
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/semantic_knowledgebase
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(semantic_knowledgebase_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(semantic_knowledgebase_generate_messages semantic_knowledgebase_generate_messages_py)

# target for backward compatibility
add_custom_target(semantic_knowledgebase_genpy)
add_dependencies(semantic_knowledgebase_genpy semantic_knowledgebase_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS semantic_knowledgebase_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/semantic_knowledgebase)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/semantic_knowledgebase
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(semantic_knowledgebase_generate_messages_cpp geometry_msgs_generate_messages_cpp)
add_dependencies(semantic_knowledgebase_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/semantic_knowledgebase)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/semantic_knowledgebase
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(semantic_knowledgebase_generate_messages_lisp geometry_msgs_generate_messages_lisp)
add_dependencies(semantic_knowledgebase_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/semantic_knowledgebase)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/semantic_knowledgebase\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/semantic_knowledgebase
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/semantic_knowledgebase
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/semantic_knowledgebase/.+/__init__.pyc?$"
  )
endif()
add_dependencies(semantic_knowledgebase_generate_messages_py geometry_msgs_generate_messages_py)
add_dependencies(semantic_knowledgebase_generate_messages_py std_msgs_generate_messages_py)
