#!/usr/bin/env python3
#
#Author: Dominic Brass
#Script: cfexcercises2.py
#Arguements: none
#Date: Oct 2018

"""Various functions."""

## imports ##
import sys # module to interface our program with the operating system

## constants ##

## functions ##

def foo_1(x=1):
    """Function that raises an input to the power of 0.5."""
    return x ** 0.5

def foo_2(x=2,y=3):
    """Function that returns the largest of two inputs."""
    if x > y:
        return x
    return y

def foo_3(x=1, y=2, z=3):
    """Function that orders the inputs."""
    if x > y:
        tmp = y
        y = x
        x = tmp
    if y > z:
        tmp = z
        z = y
        y = tmp
    return [x, y, z]

def foo_4(x=3):
    """Computes factorials"""
    result = 1
    for i in range(1, x + 1):
        result = result * i
    return result

def foo_5(x=1):
    """Computes factorials"""
    if x == 1:
        return 1
    return x*foo_5(x - 1)

def foo_6(x): # Calculate the factorial of x in a different way
    """Computes factorials"""
    facto = 1
    while x >= 1:
        facto = facto * x
        x = x - 1
    return facto    

def main(argv): 
    print(foo_1(10)) 
    print(foo_2(10,1)) 
    print(foo_3(10,9,8)) 
    print(foo_4(10)) 
    print(foo_5(10)) 
    print(foo_6(10))

if (__name__ == "__main__"):
    """Makes sure the "main" function is called from the command line"""
    status = main(sys.argv)
    sys.exit(status)