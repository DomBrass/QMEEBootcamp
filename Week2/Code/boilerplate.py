#!/usr/bin/env python3

"""Description of this program or application.
   You may use several lines"""

__appname__ = '[application name here]'
__author__ = 'Your Name (your@email.address)'
__version__ = '0.0.1'
__license__ = "License for this code/program"

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