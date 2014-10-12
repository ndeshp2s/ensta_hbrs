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
 *   * Neither the name of Willow Garage, Inc. nor the names of its
 *     contributors may be used to endorse or promote products derived
 *     from this software without specific prior written permission.
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
 *********************************************************************/

#ifndef _SEMANTIC_COSTMAP_ROS_
#define _SEMANTIC_COSTMAP_ROS_

#include "semantic_costmap_global/inflation_semantic_costmap.h"
#include <costmap_2d/costmap_2d_ros.h>
#include <std_msgs/String.h>
#include <string>
#include <tf/transform_listener.h>
#include <ros/ros.h>

namespace semantic_navigation{

	class SemanticCostmapROS{

	public:
		SemanticCostmapROS(ros::NodeHandle* nh, std::string name,tf::TransformListener& tf, const std_msgs::String& type, const std_msgs::String& map);
		virtual ~SemanticCostmapROS();

		bool publishSemanticCostmap();
		bool prepareSemanticCostmap(); 

	private:
		void subscribe();
		SemanticCostmap*  _semantic_costmap;
		costmap_2d::Costmap2DROS* _costmap_2d_ros;

		ros::NodeHandle* nh_;
		std::string name_;
		tf::TransformListener& tf_;
		std_msgs::String map_;	
		std_msgs::String type_;
		

	};

}
#endif
