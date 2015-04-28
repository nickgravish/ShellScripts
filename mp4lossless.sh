
for file in *.avi
do
	ffmpeg -i "$file" -c:v ffv1 -qscale:v 0 "${file%.avi}_ff.avi";
	echo "$file" 
done