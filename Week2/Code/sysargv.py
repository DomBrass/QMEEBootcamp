#!usr/bin/env python3
#
#Author: Dominic Brass
#Script: sysargv.py
#Arguements: As many strings as required.
#Date: Oct 2018

"""Script that demonstrates the use of sys.argv."""

import sys
print("This is the name of the script: ", sys.argv[0])
print("Number of arguements:", len(sys.argv))
print("The arguements are:", str(sys.argv))