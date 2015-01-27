#!/usr/bin/env python

import rospy
import yaml

from geometry_msgs.msg import *


class RegionLoader(object):
    def __init__(self,filename,publish,no_store):
        self.filename = filename
        self.publisher = publish
        self.no_store = no_store
  
    def load_file(self,filename):
        yaml_data = None 
        with open(filename) as f:
            yaml_data = yaml.load(f)

        return yaml_data

        
    def spin(self):
        data= self.load_file(self.filename)
        self.publisher(data)


        
