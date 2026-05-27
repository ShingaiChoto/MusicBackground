#!/bin/sh
# Changes the wallpaper to a randomly chosen image in a given directory
# at a set interval.

DEFAULT_INTERVAL=2 # In seconds

if [ $# -lt 1 ] || [ ! -d "$1" ]; then
	printf "Usage:\n\t\e[1m%s\e[0m \e[4mDIRECTORY\e[0m [\e[4mINTERVAL\e[0m]\n" "$0"
	printf "\tUpdates Wallpaper to current song every\n\tINTERVAL seconds (or every %d seconds if unspecified)." "$DEFAULT_INTERVAL"
	exit 1
fi

# See awww-img(1)
RESIZE_TYPE="crop"
export AWWW_TRANSITION_FPS="${AWWW_TRANSITION_FPS:-60}"
export AWWW_TRANSITION_STEP="${AWWW_TRANSITION_STEP:-2}"

while true; do
~/.config/music-background/nowplaying.sh
		awww img --resize="$RESIZE_TYPE" "~/.config/music-background/album_art.jpg"
		sleep "${2:-$DEFAULT_INTERVAL}"
done
