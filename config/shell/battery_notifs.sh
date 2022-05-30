#!/bin/sh

# When battery reaches 10% or 5%, notify the user.

battery=$(cat /sys/class/power_supply/BAT0/capacity)

while true; do
	if [ $battery -eq 15 ]; then
			notify-send --urgency=critical "Low Battery! (15%)" "Charge your laptop quickly."
			espeak "Low battery. Please charge."
	elif [ $battery -eq 10 ]; then
			notify-send --urgency=critical "Critical Battery! (10%)" "Charge your laptop now. Before you lose your data. Seriously."
			espeak "Critical battery. Please charge."
	elif [ $battery -eq 5 ]; then
			notify-send --urgency=critical "REALLY Critical Battery! (5%)" "Dude, your battery is going to go to the landfill soon."
			espeak "Critical battery. Charge immediately."
	fi
	echo "$battery"
	sleep 5
done