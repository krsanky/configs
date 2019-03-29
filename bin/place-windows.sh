#!/bin/sh

# the cwm border affects window placement
# OR wmctrl doesnt report geom correctly
# 'g,x,y,w,h'. 
wmctrl -e 0,0,0,1168,972 -r 'Firefox'
wmctrl -x -r 'sakura.Web' -e 0,795,394,1048,802
wmctrl -x -r 'sakura.Games' -e 0,287,245,1203,717
wmctrl -x -r 'sakura.Media' -e 0,333,289,1237,797

