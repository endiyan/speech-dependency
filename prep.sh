#!/bin/bash


#how-to
#./prep.sh path-to-file-in-other-format.mp3

#extracting the filename

filename=$(basename "$1")
extension="${filename##*.}"
filename="${filename%.*}"
path=$(dirname "$1")

#echo $filename
#echo $extension
#echo $path

#convert audio to flac then save with the same file name
ffmpeg -i $1 -ac 1 "$path/$filename.flac"


