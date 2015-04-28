#!/bin/sh

for file in *.avi
do
	ffmpeg -i "$file" -vcodec rawvideo "_${file%_.avi}";
	echo "$file" 
done