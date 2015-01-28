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

def provide_entity_list(request):
    if request.object_category_request == 'structural_objects':
	for t in yaml_data:		
		obj.name = t['name']
        	obj.geometry.pose = message_converter.convert_dictionary_to_ros_message('geometry_msgs/Pose',t['geometry']['pose'])
        	obj.geometry.bounding_box = message_converter.convert_dictionary_to_ros_message('semantic_knowledgebase/BoundingBox',t['geometry']['bounding_box'])
        	obj.semantics.category = t['semantics']['category']
        	object_list.objects.append(obj)

	
    	print "Sending structural objects list."
        return KBServiceResponse(object_list)
 
    else:
       print "Unknown object category requested."
       return KBServiceResponse()

def entity_list_server():
    
    s = rospy.Service('entity_list', KBService, provide_entity_list)
    print "Ready to send entity list."
    rospy.spin()

if __name__ == '__main__':
    rospy.init_node('entity_list_server')
    object_list = ObjectList()
    v = BoundingBoxArray()
    obj = Object()
    filename = rospy.get_param('~filename')
    with open(filename) as f:
         yaml_data = yaml.load(f)

    entity_list_server()
    
