#!/bin/sh

for file in *.avi
do
	mkdir "${file%.avi}"
	ffmpeg -i "$file" ./"${file%.avi}"/%10d.tif
done
