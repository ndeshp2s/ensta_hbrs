# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rospy_message_converter: 1 messages, 0 services")

set(MSG_I_FLAGS "-Irospy_message_converter:/home/brsu/catkin_ws/src/ensta_hbrs/rospy_message_converter/msg;-Istd_msgs:/opt/ros/hydro/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rospy_message_converter_generate_messages ALL)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(rospy_message_converter
  "/home/brsu/catkin_ws/src/ensta_hbrs/rospy_message_converter/msg/TestArray.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rospy_message_converter
)

### Generating Services

### Generating Module File
_generate_module_cpp(rospy_message_converter
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rospy_message_converter
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rospy_message_converter_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rospy_message_converter_generate_messages rospy_message_converter_generate_messages_cpp)

# target for backward compatibility
add_custom_target(rospy_message_converter_gencpp)
add_dependencies(rospy_message_converter_gencpp rospy_message_converter_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rospy_message_converter_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(rospy_message_converter
  "/home/brsu/catkin_ws/src/ensta_hbrs/rospy_message_converter/msg/TestArray.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rospy_message_converter
)

### Generating Services

### Generating Module File
_generate_module_lisp(rospy_message_converter
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rospy_message_converter
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rospy_message_converter_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rospy_message_converter_generate_messages rospy_message_converter_generate_messages_lisp)

# target for backward compatibility
add_custom_target(rospy_message_converter_genlisp)
add_dependencies(rospy_message_converter_genlisp rospy_message_converter_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rospy_message_converter_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(rospy_message_converter
  "/home/brsu/catkin_ws/src/ensta_hbrs/rospy_message_converter/msg/TestArray.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rospy_message_converter
)

### Generating Services

### Generating Module File
_generate_module_py(rospy_message_converter
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rospy_message_converter
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rospy_message_converter_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rospy_message_converter_generate_messages rospy_message_converter_generate_messages_py)

# target for backward compatibility
add_custom_target(rospy_message_converter_genpy)
add_dependencies(rospy_message_converter_genpy rospy_message_converter_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rospy_message_converter_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rospy_message_converter)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rospy_message_converter
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(rospy_message_converter_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rospy_message_converter)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rospy_message_converter
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(rospy_message_converter_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rospy_message_converter)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rospy_message_converter\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rospy_message_converter
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rospy_message_converter
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rospy_message_converter/.+/__init__.pyc?$"
  )
endif()
add_dependencies(rospy_message_converter_generate_messages_py std_msgs_generate_messages_py)
