#!/bin/bash

################################################
# Script	: home_video_upload.sh		
# Name		: tbillings			
# Email		: billingsutilityops@gmail.com	
# Date		: 12/24/2019			
# Objective	: Convert VOB to MKV		
################################################
##### Bash Script #####
#######################


if ! [ $(id -u ) = 0 ]
then
	echo "You suck... ya Jack-Ass!"
	echo "Root privilege required to execute script."
	exit 1
fi

FILE=christmas/VIDEO_TS/VIDEO_TS.VOB

if [ -f "$FILE" ]
then
	echo "Processing VOB file for upload."
	cat $FILE > output.vob
	ffmpeg -i $FILE video.vob
	ffmpeg -i video.vob christmas_vid_1.mkv
	echo "Ready for upload to Youtube....."
else
	echo "File does not exist."
fi

echo "Script complete..."
