#!/bin/bash
# This file increases or decreases the brightness by ten percent

direction=$1

brightness=$( cat ~/.config/bar/brightness )

if [ $direction == "+" ]; then
    brightness=$[ brightness + 10 ]
elif [ $direction == "-" ]; then
    brightness=$[ brightness - 10 ]
fi

if [ $brightness -gt 100 ]; then
    brightness=100
elif [ $brightness -lt 0 ]; then
    brightness=0
fi

brightness_level=$(( $brightness / 100 )).$(( $brightness % 100 ))
screennames=($(xrandr | grep " connected" | cut -f1 -d" "))
for screenname in "${screennames[@]}"
do
    xrandr --output $screenname --brightness $brightness_level
done

echo $brightness > ~/.config/bar/brightness
