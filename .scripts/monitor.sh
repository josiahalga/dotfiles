#!/bin/bash

CHECK_MONITOR="hyprctl monitors all | grep "Monitor" | wc -l"

if [[ $CHECK_MONITOR > 2 ]] 
then
	echo "Detected more than 1 monitor"
fi
