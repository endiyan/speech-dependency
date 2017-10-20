#!/bin/bash

#extracting the filename

filename=$(basename "$1")
extension="${filename##*.}"
filename="${filename%.*}"
path=$(dirname "$1")

#echo $filename
#echo $extension
#echo $path

#audio conversion
ffmpeg -i $1 "$path/$filename.flac"

