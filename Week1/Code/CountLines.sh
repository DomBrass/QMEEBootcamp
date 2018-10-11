#!/bin/bash
#Author: Dominic Brass
#Script: CountLines.sh
#Desc: Takes a file and counts the number of lines.
#Arguements: One file.
#Date: Oct 2018

NumLines=$(wc -l < $1)
echo "The file $1 has $NumLines lines"
echo