execute_process(COMMAND "/home/brsu/catkin_ws/build/ensta_hbrs/rospy_message_converter/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/brsu/catkin_ws/build/ensta_hbrs/rospy_message_converter/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
