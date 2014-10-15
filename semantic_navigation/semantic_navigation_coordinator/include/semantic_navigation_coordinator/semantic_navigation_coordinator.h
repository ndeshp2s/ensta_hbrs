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

#ifndef _SEMANTIC_NAVIGATION_COORDINATOR_
#define _SEMANTIC_NAVIGATION_COORDINATOR_



#include <vector>
#include <string>

#include <ros/ros.h>
#include <tf/transform_listener.h>
#include <move_base_msgs/MoveBaseGoal.h>
#include <std_msgs/String.h>
#include <semantic_costmap_global/semantic_costmap_ros.h>
#include <nav_core/base_global_planner.h>
#include <pluginlib/class_loader.h>


namespace semantic_navigation{

	class SemanticNavigationCoordinator{
	public:			
		/*
		* @brief : Default Constructor
		*/
		SemanticNavigationCoordinator(tf::TransformListener* tf);
		/*
		* @brief : Default Destuctor
		*/
		virtual ~SemanticNavigationCoordinator();
	private:
		int runLoop(move_base_msgs::MoveBaseGoal &goal);
		std::string global_planner;
		SemanticCostmapROS* _semantic_costmap_ros;
		boost::shared_ptr<nav_core::BaseGlobalPlanner> global_planner_;

		double _inflation_radius;
		
		//int runLoop(semantic_navigation_msgs::SemanticGoal &goal);

		pluginlib::ClassLoader<nav_core::BaseGlobalPlanner> bgp_loader_;
	};
}

#endif
