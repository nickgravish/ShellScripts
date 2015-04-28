#!/bin/sh

ffmpeg -i "$1" -vcodec libx264 -preset slow -pix_fmt yuv420p "${1%.avi}.mp4";
