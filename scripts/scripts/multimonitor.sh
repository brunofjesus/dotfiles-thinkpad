#!/bin/sh

OPTION=$1

if [[ $OPTION == '' ]]; then
  OPTION='help'
fi

if [ $OPTION == "above" ]; then
  xrandr --output VGA1 --auto --above LVDS1 --output LVDS1 --auto
elif [ $OPTION == "dock" ]; then
  xrandr --output VGA1 --auto --output LVDS1 --off
elif [ $OPTION == "project" ]; then
  xrandr --output VGA1 --same-as LVDS1
elif [ $OPTION == "project-lr" ]; then
  xrandr --output VGA1 --same-as LVDS1 --mode 1280x720 --output LVDS1 --mode 1280x720
elif [ $OPTION == "primary" ]; then
  xrandr --output VGA1 --off --output LVDS1 --auto
else
  echo "Sets multi monitor setup"
  echo " above: Set external monitor above"
  echo " dock: Turn on external monitor and turn off primary monitor"
  echo " project: Mirror external monitor on default resolutions"
  echo " project-lr: Mirror external monitor at 1280x720"
  echo " primary: Only internal monitor is on"
fi

# Adjust the wallpaper
 feh --bg-scale ~/.config/wallpaper/wallpaper.png &
