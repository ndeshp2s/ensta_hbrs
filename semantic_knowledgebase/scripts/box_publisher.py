#!/usr/bin/env python
# license removed for brevity
import rospy
from geometry_msgs.msg import *
from semantic_knowledgebase.msg import *
 
def talker():
     box_pub = rospy.Publisher('box',BoundingBox,latch=True)
     rospy.init_node('box_publisher')
     rate = rospy.Rate(10) # 10hz
     b = BoundingBox()
     p = Vector3()
     i = 10
     while not rospy.is_shutdown():
	     for x in xrange(5):         
		  p.x = i+100
		  p.y = i+200
		  p.z = 0
		  i = i+3
                  b.box.append(p)
		  rospy.loginfo(b)
		  box_pub.publish(b) 
	    



if __name__ == '__main__':
     try:
         talker()
     except rospy.ROSInterruptException:
         pass
     rospy.spin()
