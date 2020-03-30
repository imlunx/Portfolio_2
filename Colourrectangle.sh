#!/bin/bash
# Student Name  : Aaron Ng Wee Xuan
# Student Number: 10518970

#gets lines that contain 3 digits and ends with Red
#reject any line with 100
grep -e '[[:digit:]]\{3\}.*Red$' rectangle.txt | grep -v '100'

