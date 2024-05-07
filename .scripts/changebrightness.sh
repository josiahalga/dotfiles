#!/bin/bash

function send_notification() {
    brightness=$(brightnessctl | grep "Current brightness" | awk '{print $4}' | grep -o '[0-9]\+')
    dunstify -a "changebrightness" -u low -r 992 -h int:value:"$brightness" "Brightness: ${brightness}%" -t 2000
}

case $1 in
up)
    brightnessctl set +10%
    send_notification $1
    ;;
down)
    if (($(brightnessctl | grep "Current brightness" | awk '{print $4}' | grep -o '[0-9]\+') > 10)); then
        brightnessctl set 10%-
        send_notification $1
    fi
    ;;
esac
