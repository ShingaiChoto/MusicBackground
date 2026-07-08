#!/bin/sh
# Changes the wallpaper to a randomly chosen image in a given directory
# at a set interval.


# See awww-img(1)
RESIZE_TYPE="fit"

while true; do
  ./nowplaying.sh
  sleep 0.5
if [ -f ./albumart.jpg ]; then
  awww img --transition-type="fade" --resize="$RESIZE_TYPE" --transition-duration="0.5" --transition-step="90" "./albumartfinal.jpg"
else
  awww img --transition-type="fade" --resize="$RESIZE_TYPE" --transition-duration="0.5" --transition-step="2" "./albumartfallback.jpg"
fi
done
