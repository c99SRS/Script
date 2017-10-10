#!/bin/bash
#Purpose = Backup of Important Data
#Created on 29-01-2017
#Author = Smruti Ranjan
#Version 1.0
#START
#mkdir /home/smruti/image

DIR=/home/smruti/Image              #your destination directory
SRC=/home/smruti/NetBeansProjects/ehr-platform/xxxxxx/xxxxxxxxxxxx/upload          # your source directory , change accordingly 
if [ ! -d $DIR ]
then
        echo " directory " $DIR " does not exist. creating directory ........";
        mkdir /home/smruti/Image
        find $SRC -maxdepth 1 -mtime +1 -type f -exec cp "{}" $DIR \;
else
        echo "directory " $DIR " exists. Copying files .........";
        find $SRC -maxdepth 1 -mtime +1 -type f -exec cp "{}"  $DIR \;
fi
echo ""
echo " =======>>>>>>>>>  Enjoy  scripts <<<<<<<<<<===============";

echo ""
echo "     All Files copied Successfully !!!"
echo ""
