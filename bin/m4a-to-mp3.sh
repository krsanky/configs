#!/bin/sh


if [ $# -ne 1 ] ; then
	echo "m4a-to-mp3.sh <m4a>"
fi
M4A=$1

#echo 'ffmpeg -i input.m4a -acodec libmp3lame -ab 128k output.mp3'

MP3=$(basename $M4A .m4a)".mp3"
MP3_2=$(echo $MP3 | tr ' ' '_')
echo "MP3_2:${MP3_2}"

ffmpeg -i "$M4A" -acodec libmp3lame -ab 128k output.mp3

