#!usr/bin/env python3
#
#Author: Dominic Brass
#Script: boilerplate.py
#Arguements: none
#Date: Oct 2018

"""A boilerplate for python scripts."""

__appname__ = '[boilerplate.py]'
__author__ = 'Dominic Brass'

## imports ##
import sys # module to interface our program with the operating system

## constants ##

## functions ##
def main(argv):
    """Main entry point of the program """
    print('This is a boilerplate')
    return 0

if __name__ == "__main__":
    """Makes sure the "main" function is called from the command line"""
    status = main(sys.argv)
    sys.exit(status)
