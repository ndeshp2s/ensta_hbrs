#!/usr/bin/env python

import rospy
import yaml
import tf
import copy


from semantic_knowledgebase import RegionLoader
from rospy_message_converter import message_converter
from yocs_msgs.msg import *


def publish(wall):
    wall_list = WallList()

    for t in wall:
        tp = Wall()
        tp.name = t['name']
        tp.length = float(t['length'])
        tp.width  = float(t['width'])
        tp.height = float(t['height'])
        tp.pose.header.frame_id = t['frame_id']
        tp.pose.header.stamp = rospy.Time.now()
        tp.pose.pose.pose = message_converter.convert_dictionary_to_ros_message('geometry_msgs/Pose',t['pose'])
        wall_list.obstacles.append(tp)

        wall_pub.publish(wall_list)
    return


if __name__ == '__main__':
    global wall_pub
    rospy.init_node('wall_publisher_from_file')
    filename = rospy.get_param('~filename')
    wall_pub = rospy.Publisher('wall_pose_list',WallList,latch=True)
    
    rl = RegionLoader(filename,publish,True)
    rospy.loginfo('Initialized')
    rl.spin()
    rospy.spin()
    rospy.loginfo('Bye Bye')
	
