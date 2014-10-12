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
 *********************************************************************/

#include "semantic_costmap_global/semantic_costmap_ros.h"

using namespace semantic_navigation;

SemanticCostmapROS::SemanticCostmapROS(ros::NodeHandle* nh, std::string name, tf::TransformListener& tf, const std_msgs::String& type, const std_msgs::String& map) : nh_(nh),tf_(tf), name_(name), type_(type),map_(map){	

	_costmap_2d = new costmap_2d::Costmap2D();
	_semantic_costmap_global = new costmap_2d::Costmap2D();
	_costmap_2d_ros =  new costmap_2d::Costmap2DROS(name_, tf_);


	if (type.data == "InflationSemanticCostmap"){
	 	_semantic_costmap = new InflationSemanticCostmap();
	}
	else{
		ROS_ERROR("Please specify the costmap type");
	} 
}

bool SemanticCostmapROS::prepareSemanticCostmap(){
	_costmap_2d = _costmap_2d_ros->getCostmap (); 
	_semantic_costmap_global = _semantic_costmap->getSemanticCostmap(_costmap_2d);

	if (!(_semantic_costmap_global == NULL))
		return false;
	else
		return true;
}

bool SemanticCostmapROS::publishSemanticCostmap(double frequency){

	//_costmap_2d_ros->mapUpdateLoop (frequency);
	return false;
	
}

