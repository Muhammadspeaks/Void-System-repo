#!/bin/sh


# Defining functions
# Using pulseaudio and pulsemixer to control the volume

toggle () { pulsemixer --toggle-mute ; }
up () { pulsemixer --change-volume +10 ; }
down () { pulsemixer --change-volume -10 ; }

# Here "$1" means that the script depends on the argument you put it after and to see what command line you want to process.

    # For example if you run $ volume.sh up
    # then it will run the case titled with up which is in our code is
    # pulsemixer --change-volume +up

# Cases defined
# The case statement allows you to easily check pattern (conditions) and then process a command-line if that condition evaluates to true.
case "$1" in
	toggle) toggle ;;
    	up) up ;;
    	down) down ;;
esac


