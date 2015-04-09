cmake_minimum_required(VERSION 2.8.3)
project(ensta_gazebo_objects)

find_package(catkin REQUIRED)

catkin_package()

set(INSTALL_DIRS common/objects/ common/worlds/ launch/) 
foreach(dir ${INSTALL_DIRS}) 
  install(DIRECTORY ${dir}
    DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/${dir}
  )
endforeach(dir)
