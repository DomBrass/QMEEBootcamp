#Author: Dominic
#Script: tabtocsv.sh
#Desc: substitute the tabs in the files with commas
#saves the output to a .csv files
#Arguements: 1-> tab delimited files.
#Date: Oct 2018

echo "Creating a space separated version of $1 ..."
cat $1 | tr -s "," " " >> $1.txt
echo "Done!"
exit