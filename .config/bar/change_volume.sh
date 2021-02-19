#!/bin/bash
# This file increases or decreases the volume on a logarithmic scale, but displays a change of 10 percent

direction=$1

volume=$( cat ~/.config/bar/volume )

if [ $direction == "+" ]; then
    volume=$[ volume + 10 ]
elif [ $direction == "-" ]; then
    volume=$[ volume - 10 ]
fi

if [ $volume -gt 100 ]; then
    volume=100
elif [ $volume -lt 0 ]; then
    volume=0
fi

declare -A volume_map
volume_map[0]=0
volume_map[10]=28
volume_map[20]=45
volume_map[30]=58
volume_map[40]=67
volume_map[50]=75
volume_map[60]=81
volume_map[70]=88
volume_map[80]=92
volume_map[90]=97
volume_map[100]=100
mapped_volume=${volume_map[$volume]}
amixer sset Master $mapped_volume%

echo $volume > ~/.config/bar/volume
