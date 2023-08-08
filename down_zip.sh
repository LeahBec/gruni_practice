#!/bin/bash

dir=$1
if [ ! -d $dir ]; then
	echo "could not find directory"
	exit 1
fi
i=1
for url in ${@:2}; do
	filename="${i}img"
	echo $filename
	#touch {$filname}.png
	wget --no-check-certificate -P "$dir" "$url"
	if [ $?  -ne 0 ]; then
		echo "Failed to download file"
	else
		echo "File downloaded successfully!"
	fi
done
timestamp=$(date +'%Y-%m-%d-%H-%M-%S')
ls $dir
echo $timestamp
folder_name="$timestamp.zip"
zip -q -j "$folder_name" "$dir"

