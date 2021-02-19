#!/bin/bash
# The output of this file is displayed on the left side of the bar every tenth of a second

while :; do
    brightness=$( cat ~/.config/bar/brightness )
    volume=$( cat ~/.config/bar/volume )

    echo "$brightness% | $volume%"
    sleep 0.1
done
