#!/usr/bin/env bash

for asp in 4x3 1x1
do
  for res in 256 512
  do
    for i in flags/${asp}/*.svg
    do
      IMAGE_NAME=$(basename $i .svg)
      /c/Program\ Files/Inkscape/Inkscape.exe -z -e png/${asp}/${res}/${IMAGE_NAME}.png -h ${res} $i
    done
  done
done

