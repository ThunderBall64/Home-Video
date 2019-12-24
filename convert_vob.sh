#!/bin/bash

################################################|
# Script	: convert_vob.sh		|
# Name		: tbillings			|
# Email		: billingsutilityops@gmail.com	|
# Date		: 12/24/2019			|
# Objective	: Convert VOB to MKV		|	
################################################|
##### Bash Script #####||||||||||||||||||||||||||
#######################/\/\/\/\/\/\/\/\/\/\/\/\/\



cat *.VOB > output.vob

ffmpeg -i output.vob
