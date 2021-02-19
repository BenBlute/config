#!/bin/sh

# /etc/X11/xinit/xinitrc
#
# global xinitrc file, used by all X sessions started by xinit (startx)

# invoke global X session script
# . /etc/X11/Xsession

setterm -blank 0 -powersave off -powerdown 0
xset s off

exec spectrwm
