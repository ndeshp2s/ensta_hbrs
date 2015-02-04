#!/usr/bin/env python

import rospy
import yaml
import copy

from semantic_knowledgebase.srv import *
from rospy_message_converter import message_converter
from yocs_msgs.msg import *
from semantic_knowledgebase.msg import *
from geometry_msgs.msg import *
from std_msgs.msg import *

class ServerClass():
    def __init__(self, data):
	self.server = rospy.Service('object_information_all', ObjectInformationAll, self.service_callback)
    	self.data = data

    def service_callback(self, request):
        rospy.loginfo(request.object_category_request)
        object_list = ObjectList()

	for t in self.data:
                obj = Object()
		v = BoundingBoxArray()	

		object_category = request.object_category_request

		obj.semantics.category = t['semantics']['category']

                if ( obj.semantics.category == object_category ):	
			obj.instance.name = t['instance']
        		obj.geometry.pose = message_converter.convert_dictionary_to_ros_message('geometry_msgs/Pose',t['geometry']['pose'])
        		obj.geometry.bounding_box = message_converter.convert_dictionary_to_ros_message('semantic_knowledgebase/BoundingBox',t['geometry']['bounding_box'])
        		obj.semantics.sub_category = t['semantics']['sub_category']
        		object_list.objects.append(obj)

		else:
		   	rospy.loginfo("No structural objects.")

        #rospy.loginfo("Sending structural objects list.")
	return ObjectInformationAllResponse(object_list)

def initlize_node():
    '''
    Initilize node and spin which simply keeps python 
    from exiting until this node is stopped
    '''
    rospy.init_node('object_information_all_node', anonymous=False)
    rospy.loginfo("object_information_all_node is now running")


    filename = rospy.get_param('~filename')
    with open(filename) as f:
         yaml_data = yaml.load(f)

    server_class = ServerClass(yaml_data)
    rospy.spin()

if __name__ == '__main__':
    initlize_node()
