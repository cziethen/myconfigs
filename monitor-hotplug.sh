#!/bin/sh
read DP4STATUS < /sys/class/drm/card1-DP-4/status
read HDMI1STATUS < /sys/class/drm/card1-HDMI-A-1/status
export XAUTHORITY=/home/chzi/.Xauthority
if [ "$DP4STATUS" = "connected" ]; then
    xrandr --output DP4 --mode 1600x1200 --pos 3520x0 --auto
  else
    xrandr --output DP4 --off
fi
if [ "$HDMI1STATUS" = "connected" ]; then                       
    xrandr --output HDMI1 --mode 1600x1200 --pos 1920x0 
  else
    xrandr --output HDMI1 --off
fi
