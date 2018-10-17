#!/usr/bin/python

"""Example of how to write doctests."""

__appname__ = '[debugme.py]'
__author__ = 'Dominic Brass'

def createabug(x):
    y = x**4
    z = 0.
    y = y/z
    return y

createabug(25)