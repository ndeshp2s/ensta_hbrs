/*********************************************************************
 *
 * Software License Agreement (BSD License)
 *
 *  Copyright (c) 2014, Hochschule Bonn-Rhein-Sieg, Germany
 *                      ENSTA ParisTech, France
 *  All rights reserved.
 *
 *  Redistribution and use in source and binary forms, with or without
 *  modification, are permitted provided that the following conditions
 *  are met:
 *
 *   * Redistributions of source code must retain the above copyright
 *     notice, this list of conditions and the following disclaimer.
 *   * Redistributions in binary form must reproduce the above
 *     copyright notice, this list of conditions and the following
 *     disclaimer in the documentation and/or other materials provided
 *     with the distribution.
 *   * Neither the name of Hochschule Bonn-Rhein-Sieg, Germany and ENSTA 
 *     ParisTech, France nor the names of its contributors may be used to 
 *     endorse or promote products derived from this software without 
 *     specific prior written permission.
 *
 *  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 *  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 *  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 *  FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 *  COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 *  INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 *  BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 *  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 *  CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 *  LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 *  ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 *  POSSIBILITY OF SUCH DAMAGE.
 *
 * Author: Niranjan Vilas Deshpande
 *         (niranjan.deshpande187@gmail.com)
 * Supervised by: Sven Schneider
 *                Prof. Dr. Paul G. Ploeger
 *		  Prof. Dr. David Filliat
 *********************************************************************/

#include <semantic_navigation_coordinator/semantic_navigation_coordinator.h>

using namespace semantic_navigation;


SemanticNavigationCoordinator::SemanticNavigationCoordinator(tf::TransformListener* tf):bgp_loader_("nav_core", "nav_core::BaseGlobalPlanner") {

	ros::NodeHandle* nh;
    	ros::NodeHandle private_nh("~");
	ros::Rate loop_rate(10);
	std_msgs::String map, type;
	std::string name = "semantic_costmap_global";
	map.data = "map";
	type.data = "inflation_semantic_costmap";
	
	_semantic_costmap_ros = new SemanticCostmapROS(nh, name, *tf, type, map);

	private_nh.param("inflation_radius", _inflation_radius, 0.0);	
	private_nh.param("base_global_planner", global_planner, std::string("navfn/NavfnROS"));
	//initialize the global planner
	try {
	//check if a non fully qualified name has potentially been passed in
	if(!bgp_loader_.isClassAvailable(global_planner)){
	std::vector<std::string> classes = bgp_loader_.getDeclaredClasses();
	for(unsigned int i = 0; i < classes.size(); ++i){
	  if(global_planner == bgp_loader_.getName(classes[i])){
	    //if we've found a match... we'll get the fully qualified name and break out of the loop
	    ROS_WARN("Planner specifications should now include the package name. You are using a deprecated API. Please switch from %s to %s in your yaml file.",
		global_planner.c_str(), classes[i].c_str());
	    global_planner = classes[i];
	    break;
	  }
	}
	}

	global_planner_ = bgp_loader_.createInstance(global_planner);
	//global_planner_->initialize(bgp_loader_.getName(global_planner), _semantic_costmap_ros);
	} catch (const pluginlib::PluginlibException& ex)
	{
	ROS_FATAL("Failed to create the %s planner, are you sure it is properly registered and that the containing library is built? Exception: %s", global_planner.c_str(), ex.what());
	exit(1);
	}
	
}	


SemanticNavigationCoordinator::~SemanticNavigationCoordinator() {
}

int SemanticNavigationCoordinator::runLoop(move_base_msgs::MoveBaseGoal &goal){
}



