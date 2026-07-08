#!/bin/sh
# Changes the wallpaper to a randomly chosen image in a given directory
# at a set interval.


# See awww-img(1)
RESIZE_TYPE="fit"

while true; do
  ./nowplaying.sh
  sleep 1 
if [ -f ./albumart.jpg ]; then
  awww img --transition-type="none" --resize="$RESIZE_TYPE" "./albumart.jpg"
else
  awww img --transition-type="none" --resize="$RESIZE_TYPE" "./albumartfallback.jpg"
fi
done
