#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
#polybar-msg cmd quit
# Otherwise you can use the nuclear option:
killall -q polybar

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
#polybar --config=$HOME/.config/polybar/config.ini fisher 2>&1 | tee -a /tmp/polybar1.log & disown
#polybar bar2 2>&1 | tee -a /tmp/polybar2.log & disown

#for m in $(polybar --list-monitors | cut -d":" -f1); do
#    MONITOR=$m polybar --config=$HOME/.config/polybar/config.ini --reload fisher &
#done

#if type "xrandr"; then
#  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
#    polybar --config=$HOME/.config/polybar/config.ini --reload portion1 &
#    polybar --config=$HOME/.config/polybar/config.ini --reload portion2 &
#    #MONITOR=$m polybar --config=$HOME/.config/polybar/config.ini --reload portion3 &
#  done
#else
#  polybar --reload example &
#fi

polybar --config=$HOME/.config/polybar/config.ini --reload portion1 &
polybar --config=$HOME/.config/polybar/config.ini --reload portion2 &

echo "Bars launched..."
