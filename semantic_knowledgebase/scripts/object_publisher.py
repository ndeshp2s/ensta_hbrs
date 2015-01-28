#!/usr/bin/env python

import rospy
import yaml
import tf
import copy


from semantic_knowledgebase import RegionLoader
from rospy_message_converter import message_converter
from yocs_msgs.msg import *
from semantic_knowledgebase.msg import *
from geometry_msgs.msg import *
from std_msgs.msg import *

def publish(objects):
    object_list = ObjectList()
    v = BoundingBoxArray()

    for t in objects:
        obj = Object()

        obj.name = t['name']
        obj.geometry.pose = message_converter.convert_dictionary_to_ros_message('geometry_msgs/Pose',t['geometry']['pose'])
        obj.geometry.bounding_box = message_converter.convert_dictionary_to_ros_message('semantic_knowledgebase/BoundingBox',t['geometry']['bounding_box'])
        obj.semantics.category = t['semantics']['category']
        object_list.objects.append(obj)
        
        object_pub.publish(object_list)
    return


if __name__ == '__main__':
    global object_pub
    rospy.init_node('object_information')
    filename = rospy.get_param('~filename')
    object_pub = rospy.Publisher('object_list',ObjectList,latch=True)
    
    rl = RegionLoader(filename,publish,True)
    rospy.loginfo('Initialized')
    rl.spin()
    rospy.spin()
    rospy.loginfo('Bye Bye')
