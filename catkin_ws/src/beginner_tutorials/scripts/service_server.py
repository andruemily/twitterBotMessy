#!/usr/bin/env python
import rospy
from beginner_tutorials.srv import WordCount,WordCountResponse

def count_words(request):
    return WordCOuntResponse(len(request.words.split()))

rospy.init_node('service_server')

service = rospy.Service('word_count', WordCOunt, count_words)

rospy.spin()
