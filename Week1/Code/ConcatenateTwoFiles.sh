#!/bin/bash
#Author: Dominic Brass
#Script: ConcatenateTwoFiles.sh
#Desc: Concatenates two files and outputs the result.
#Arguements: Takes two files
#Date: Oct 2018

cat $1 > $3
cat $2 >> $3
echo "Merged File is"
cat $3