#Author: Dominic
#Script: tabtocsv.sh
#Desc: substitute the tabs in the files with commas
#saves the output to a .csv files
#Arguements: 1-> tab delimited files.
#Date: Oct 2018

echo "Creating a comma celimited version of $1 ..."
cat $1 | tr -s "\t" "," >> $1.csv
echo "Done!"
exit