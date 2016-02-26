#!/usr/bin/env python


# Every python controller needs these lines
import roslib; roslib.load_manifest('lab1')
import rospy
import sys

# The velocity command message
from geometry_msgs.msg import Twist
from sensor_msgs.msg import LaserScan

# Get parameter from launch file
miniOriginal = rospy.get_param('minDist')

# Callback method for subscriber
def callback(data):
    # Establish minimum distance allowed to obstacle
    mini = miniOriginal
    # Loop through ranges to see if obstacle exists by finding minimum range value
    for rangeNow in data.ranges:
        if rangeNow < mini:
            mini = rangeNow
    # If obstacle exists turn instead of going forward
    if mini < miniOriginal:
        # Stop moving forward
        command.linear.x = 0.0
        # Start turning instead
        command.angular.z = 1.0
    # Otherwise, forward-ho!
    else:
        # Start moving forward
        command.linear.x = 0.5
        # Stop turning 
        command.angular.z = 0.0

if __name__ == '__main__':
    rospy.init_node('move')

    # A publisher for the move data
    pub = rospy.Publisher('cmd_vel', Twist)
    # A subscriber for the sensor data
    sub = rospy.Subscriber('base_scan', LaserScan, callback)

    # Drive forward at a given speed.  The robot points up the x-axis.
    command = Twist()
    command.linear.x = 0.5
    command.linear.y = 0.0
    command.linear.z = 0.0
    command.angular.x = 0.0
    command.angular.y = 0.0
    command.angular.z = 0.0

    

    # Loop at 10Hz, publishing movement commands until we shut down.
    rate = rospy.Rate(10)
    while not rospy.is_shutdown():
        pub.publish(command)
        rate.sleep()

