#!/bin/sh

for file in *.avi
do
        outname="${file/-/minus_}"
	ffmpeg -i "$file" -vcodec libx264 -preset slow -pix_fmt yuv420p "${outname%.avi}.mp4";
	echo "$file" 
done
