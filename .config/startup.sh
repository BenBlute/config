#!/bin/bash
# This file launches spectrwm when the computer starts up

if [ -z $STARTUP_COMPLETE ]
then
  export STARTUP_COMPLETE="true"
  [[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
fi
