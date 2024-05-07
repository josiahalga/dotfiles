#!/bin/bash

function send_notification() {
    volume=$(pamixer --get-volume)
    dunstify -a "changevolume" -u low -r 993 -h int:value:"$volume" "Volume: ${volume}%" -t 2000
}

case $1 in
up)
    pamixer -u
    pamixer -i 2
    send_notification $1
    ;;
down)
    pamixer -u
    pamixer -d 2
    send_notification $1
    ;;
mute)
    pamixer -t
    if $(pamixer --get-mute); then
        dunstify -a "changevolume" -t 2000 -r 993 -u low "Volume Muted"
    else
        send_notification up
    fi
    ;;
esac
