#!/usr/bin/env python

import rospy
from std_msgs.msg import String

def test():
    pub = rospy.Publisher('test', String, queue_size=1)
    rospy.init_node('test', anonymous=True)
    pub.publish("ready")

if __name__ == '__main__':
    try:
        test()
    except rospy.ROSInterruptException:
        pass
