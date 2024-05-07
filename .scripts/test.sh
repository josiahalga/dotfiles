#!/bin/bash

brightness=$(brightnessctl | grep "Current brightness" | awk '{print $4}' | grep -o '[0-9]\+')
echo $brightness

if (($brightness > 30)); then
    echo Hello World
fi
