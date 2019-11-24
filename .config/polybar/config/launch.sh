#!/usr/bin/env bash

#Terminate all running bar instances 
killall -q polybar

# Wait until processes shutdown
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch ALL bars. Only two will succeed, but this will prevent having to  bash bspwmrc after running the polybar commands
polybar laptop_top &
polybar laptop_bottom &
polybar desktop_top &
polybar desktop_bottom &

echo "Bars launched..."
