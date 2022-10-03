#!/bin/sh

if [ $1 = "above" ]; then
  xrandr --output VGA-1 --auto --above LVDS-1 --output LVDS-1 --auto
fi

if [ $1 = "dock" ]; then
  xrandr --output VGA-1 --auto --output LVDS-1 --off
fi

if [ $1 = "project" ]; then
  xrandr --output VGA-1 --same-as LVDS-1
fi

if [ $1 = "project-lr" ]; then
  xrandr --output VGA-1 --same-as LVDS-1 --mode 1280x720 --output LVDS-1 --mode 1280x720
fi

if [ $1 = "primary" ]; then
  xrandr --output VGA-1 --off --output LVDS-1 --auto
fi
