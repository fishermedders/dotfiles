#!/bin/bash

# see man zscroll for documentation of the following parameters

if [[ $(/home/fisher/.config/polybar/scripts/get_spotify_status.sh) == "No player is running" ]]; then
	echo ""
else

zscroll -l 30 \
        --delay 0.1 \
        --scroll-padding "   " \
        --match-command "`dirname $0`/get_spotify_status.sh --status" \
        --match-text "Playing" "--scroll 1" \
	-b " " \
	-a " " \
        --update-check true "`dirname $0`/get_spotify_status.sh" &

wait

# --match-text "Paused" "--scroll 0"

fi
