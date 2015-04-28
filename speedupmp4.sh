#!/bin/sh

ffmpeg -i "$1" -r 50 -vcodec libx264 -preset slow -pix_fmt yuv420p -filter:v "setpts=0.125*PTS" "${1%.avi}.mp4";
