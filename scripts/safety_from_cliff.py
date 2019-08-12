#!/usr/bin/env python

import rospy
from std_msgs.msg import Int32
from std_msgs.msg import Float32
from sensor_msgs.msg import Range
from std_msgs.msg import Time
from sensor_msgs.msg import Imu
import math
import numpy as np
import tf

class safety_from_cliff:

    def __init__(self):
        # Define subscribers
        self.range_sub = rospy.Subscriber('teraranger_evo', Range, self.range_cb, queue_size=10)
        self.attitude_sub = rospy.Subscriber('imu_raw', Imu, self.attitude_cb, queue_size=10)

        # Define publishers
        self.safety_cliff_detected_pub = rospy.Publisher('safety/cliff_status', Int32, queue_size=10)
        self.safety_cliff_agl_pub = rospy.Publisher('safety/cliff_agl', Float32, queue_size=10)

        self.cliff_drop_distance_lim = rospy.get_param('z_state_estimator/cliff_drop_distance_lim', 0.2)
        self.rear_tire_to_terabee_distance = rospy.get_param('z_state_estimator/rear_tire_to_terabee_distance', 0.85)

        # Initialize atittude
        self.roll = 0.0
        self.pitch = 0.0

        self.safety_cliff_detected_msg = Int32()
        self.safety_cliff_agl_msg = Float32()
        self.imu_msg = Imu()
        
        while not rospy.is_shutdown():
            rospy.spin()

    def range_cb(self, msg):
        range_val = msg.range
        if (range_val < 0):
            rospy.loginfo_throttle(5,'invalid range value, setting to min')
            range_val = .1
        elif (range_val > 3):
            rospy.loginfo_throttle(5,'invalid range value, setting to max')
            range_val = 3
        
        #h_agl = range_val*math.cos(self.roll)*math.cos(self.pitch)
        h_agl = range_val - (-self.rear_tire_to_terabee_distance * math.sin(self.pitch))

        # print(self.pitch)

        cliff_detected = 1

        if(h_agl < self.cliff_drop_distance_lim):
            cliff_detected = 0

        # Publish the estimate
        self.safety_cliff_detected_msg = cliff_detected
        self.safety_cliff_agl_msg = h_agl
        
        self.safety_cliff_detected_pub.publish(self.safety_cliff_detected_msg)
        self.safety_cliff_agl_pub.publish(self.safety_cliff_agl_msg)

    def attitude_cb(self, msg):

        self.imu_msg.orientation.x = msg.orientation.x
        self.imu_msg.orientation.y = msg.orientation.y
        self.imu_msg.orientation.z = msg.orientation.z
        self.imu_msg.orientation.w = msg.orientation.w
        self.euler_angles = tf.transformations.euler_from_quaternion([self.imu_msg.orientation.x, self.imu_msg.orientation.y, self.imu_msg.orientation.z, self.imu_msg.orientation.w]) 
        self.roll = self.euler_angles[0]
        self.pitch = self.euler_angles[1]

if __name__ == '__main__':
    rospy.init_node('safety_from_cliff')
    try:
        safety_from_cliff = safety_from_cliff()
    except:
        rospy.ROSInterruptException
    pass




