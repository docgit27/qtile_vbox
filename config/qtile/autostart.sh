#!/bin/bash
picom --no-use-damage --config ~/.config/picom.conf &
nitrogen $dirs --set-zoom-fill --random  
terminator &
