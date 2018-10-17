#!/usr/bin/env python3
#
#Author: Dominic Brass
#Script: basic_csv.py
#Desc: Script that reads a csv manipulates it and then writes the result.
#Arguements: none
#Date: Oct 2018

## imports ##
import sys # module to interface our program with the operating system

import csv

# Read a file containing:
# 'Species', 'Infraorder', 'Family'. 'Distribution', 'Body mass male'
f = open('../Data/testcsv.csv','r')

csvread = csv.reader(f)
temp = []
for row in csvread:
    temp.append(tuple(row))
    print(row)
    print("The species is", row[0])

f.close()

# write a file containing only species name and Body mass
f = open('../Data/testcsv.csv','r')
g = open('../Results/bodymass.csv','w')

csvread = csv.reader(f)
csvwrite = csv.writer(g)
for row in csvread:
    print(row)
    csvwrite.writerow([row[0],row[4]])

f.close()
g.close()    