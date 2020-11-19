#!/bin/bash

# Script to randomly set Background from files in a directory
# set your Directory Containing Background
DIR="/home/emrehan/Masaüstü/slayt"
# Interval in seconds to change background
SLEEPTIME=0.09
# current img count
i=0
# set Max img value
MAX=1572
# Start a Loop
while :
do
# Command to Select a random jpg file from directory
# Delete the *.jpg to select any file but it may return a folder
PIC=$(find $DIR/img/img$i.jpg | shuf -n1)
let "i+=1"
if [ $i -eq $MAX ]
then
	let "i=0"
fi
# Command to set Background Image
gsettings set org.cinnamon.desktop.background picture-uri "file://$PIC"
# Sleep before continuing with loop
sleep $SLEEPTIME
continue
done