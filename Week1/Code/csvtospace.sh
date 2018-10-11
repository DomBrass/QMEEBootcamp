#!/bin/bash
#Author: Dominic
#Script: csvtospace.sh
#Desc: Takes a comma separated valued file and converts it to a space delimited file.
#Arguements: 1-> csv file.
#Date: Oct 2018

echo "Creating a space separated version of $1 ..."
cat $1 | tr -s "," " " >> $1.txt
echo "Done!"
exit