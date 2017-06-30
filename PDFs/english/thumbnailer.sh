#!/usr/bin/env bash
for fullfile in /Users/reuben/projects/smile_bible-for-children/PDFs/english/*
do

  filename=$(basename "$fullfile")
  extension="${filename##*.}"
  filename="${filename%.*}"
  thumbnail_name=${filename}_thumb.png

  echo " "
  echo $filename
  echo $extension
  #cmd [option] "$file" >> results.out

  echo "Get first page of pdf and convert to a smaller sized png"
  gs -q -o "${thumbnail_name}" -sDEVICE=png16m -dLastPage=1 "${fullfile}"

done