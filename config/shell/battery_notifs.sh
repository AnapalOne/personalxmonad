#!/bin/sh

# When battery reaches 10% or 5%, notify the user.

battery=$(cat /sys/class/power_supply/BAT0/capacity)

while true; do
	if [ $battery -eq 10 ]; then
			notify-send --urgency=critical "Critical Battery! (10%)" "Charge your laptop quickly. Before you lose your data. Seriously."
			espeak "Low battery. Please charge."
	elif [ $battery -eq 5 ]; then
			notify-send --urgency=critical "REALLY Critical Battery! (5%)" "Dude, your battery is going to go to the landfill soon."
			espeak "Critical battery. Please charge."
	fi
	echo "$battery"
	sleep 5
done