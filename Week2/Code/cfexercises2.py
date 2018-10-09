#!/usr/bin/env python3

"""Some functions exemplifing the use of control statements"""

__author__ = 'Dominic Brass (dombrass@googlemail.com)'
__version__ = '0.0.1'

## imports ##
import sys # module to interface our program with the operating system

## constants ##

## functions ##

def foo1(x=1):
    return x ** 0.5

def foo2(x=2,y=3):
    if x > y:
        return x
    return y

def foo3(x=1, y=2, z=3):
    if x > y:
        tmp = y
        y = x
        x = tmp
    if y > z:
        tmp = z
        z = y
        y = tmp
    return [x, y, z]

def foo4(x=3):
    result = 1
    for i in range(1, x + 1):
        result = result * i
    return result

def foo5(x=1):
    if x == 1:
        return 1
    return x*foo5(x - 1)

def main(argv): 
    print(foo1(10)) 
    print(foo2(10,1)) 
    print(foo3(10,9,8)) 
    print(foo4(10)) 
    print(foo5(10)) 

if (__name__ == "__main__"):
    """Makes sure the "main" function is called from the command line"""
    status = main(sys.argv)
    sys.exit(status)