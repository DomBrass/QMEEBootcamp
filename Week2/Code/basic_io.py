#!/usr/bin/env python3
#
#Author: Dominic Brass
#Script: basic_io.py
#Desc: Simple script that reads and writes csvs.
#Arguements: none
#Date: Oct 2018

#####################
# FILE INPUT
#####################

# Open a file for reading
f = open('../Sandbox/test.txt', 'r')
# use "implicit" for loop:
# if the object is a file, python will cycle pveer lines
for line in f:
    print(line)

#close the file
f.close()

#Same example, skip blank lines
f = open('../Sandbox/test.txt', 'r')
for line in f:
    if len(line.strip()) > 0:
        print(line)

f.close()

#######################
# FILE OUTPUT
#######################
# Save the elements of a list to a file
list_to_save = range(100)

f = open('../Sandbox/testout.txt','w')
for i in list_to_save:
    f.write(str(i) + '\n')

f.close()

######################
# STORING OBJECTS
######################
# To save an object (even complex) for later use
my_dictionary = {"a key": 10, "another key": 11}

import pickle

f = open('../Sandbox/testp.p', 'wb') ## nothe the b: accept binary files
pickle.dump(my_dictionary, f)
f.close()

## Load the data again
f = open('../Sandbox/testp.p','rb')
another_dictionary = pickle.load(f)
f.close()

print(another_dictionary)