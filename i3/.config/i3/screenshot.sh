#!/bin/bash

IMGPATH=$HOME/Pictures/Screenshots/$(date +%s).png

if [ "$1" = "full" ]; then
	maim $IMGPATH
elif [ "$1" == "overlay" ]; then
	maim -u | feh -F - & maim -s -k $IMGPATH && kill $!
elif [ "$1" == "active" ]; then
	maim -i $(xdotool getactivewindow) $IMGPATH
fi
