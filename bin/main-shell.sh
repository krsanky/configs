#!/bin/sh

# the cwm border affects window placement
# OR wmctrl doesnt report geom correctly
# 'g,x,y,w,h'. 
wmctrl -x -r 'MAIN.SHELL' -e 0,333,289,1237,797

