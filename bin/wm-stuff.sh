#!/bin/sh

#!/usr/local/bin/oksh


ht_n_wt()
{
	# resizes the window to full height and 50% width and moves into upper right corner
	# get width of screen and height of screen
	SCREEN_WIDTH=$(xwininfo -root | awk '$1=="Width:" {print $2}')
	SCREEN_HEIGHT=$(xwininfo -root | awk '$1=="Height:" {print $2}')
	echo "SCREEN_WIDTH:${SCREEN_WIDTH}"
	echo "SCREEN_HEIGHT:${SCREEN_HEIGHT}"

	# new width and height
	#W=$(( $SCREEN_WIDTH / 2 - $RIGHTMARGIN ))
	#H=$(( $SCREEN_HEIGHT - 2 * $TOPMARGIN ))

	# X, change to move left or right:

	# moving to the right half of the screen:
	#X=$(( $SCREEN_WIDTH / 2 ))

	echo "X:${X}"
	#wmctrl -r :ACTIVE: -b remove,maximized_vert,maximized_horz && wmctrl -r :ACTIVE: -e 0,$X,$Y,$W,$H

	#PS.  you can use xrandr to get(or set) the screen resolution and
	#then use wmctrl to resize your window.
}

expr_test() {
	echo "======="
	z=5
	z=$(expr $z + 1)
	echo $z
}

wmctrl_test1() {
	wmctrl -d
	wmctrl -l
}

echo $0
ht_n_wt
wmctrl_test1

expr_test




