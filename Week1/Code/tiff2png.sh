#Author: Dominic
#Script: tiff2png.sh
#Desc: Converts a tiff to a png.
#Arguements: 1-> tiff files.
#Date: Oct 2018

for f in *.tif;
    do
        echo "Converting $f";
        convert "$f"  "$(basename "$f" .tif).jpg";
    done    