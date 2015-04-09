# Declare the version of the CMake API for forward-compatibility
cmake_minimum_required(VERSION 2.8.3)

# Declare the name of the CMake Project
project(query_knowledgebase)

find_package(catkin REQUIRED COMPONENTS
  semantic_knowledgebase
  roscpp
)

# Declare this project as a catkin package
catkin_package(
  INCLUDE_DIRS include
  LIBRARIES query_knowledgebase
  CATKIN_DEPENDS 
    semantic_knowledgebase 
    roscpp
)

include_directories(include)
include_directories(
 ${catkin_INCLUDE_DIRS}
)

## Declare a cpp library
#add_library(client_library
#   src/client_library.cpp
#)

add_library(query_knowledgebase
   src/client_library.cpp
)
# Define a library target called client_library
#add_executable(client_library src/client_library.cpp)
#target_link_libraries(client_library ${roscpp_LIBRARIES})
 target_link_libraries(query_knowledgebase
   ${catkin_LIBRARIES}
 )

# Define a node target called client_library_node
#add_executable(client_library_node src/client_library_node.cpp)
#target_link_libraries(client_library_node ${roscpp_LIBRARIES} client_library)


