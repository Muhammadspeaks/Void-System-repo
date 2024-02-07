#!/bin/bash

function send_notification_up() {
    volume=$(pulsemixer --get-volume)
    dunstify "Volume increased.." -u low -r 3111 -h int:value:"$volume" -t 2000
}

function send_notification_down() {
    volume=$(pulsemixer --get-volume)
    dunstify "Volume decreased.." -u low -r 3111 -h int:value:"$volume" -t 2000
}

function send_notification_mute() {
    volume=$(pulsemixer --get-volume)
    dunstify "Volume muted" -u low -r 3111 -h int:value:"$volume" -t 2000
}

function send_notification_unmute() {
    volume=$(pulsemixer --get-volume)
    dunstify "Volume Un-muted" -u low -r 3111 -h int:value:"$volume" -t 2000
}


case $1 in
    up)
        pulsemixer --change-volume +5
        send_notification_$1
        ;;

    down)
         pulsemixer --change-volume -5
         send_notification_$1
         ;;

    mute)
         pulsemixer --mute
         send_notification_$1
         ;;

    unmute)
          pulsemixer --unmute
          send_notification_$1
         ;;
esac
