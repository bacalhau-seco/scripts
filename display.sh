#!/bin/sh

OPT=$(echo "mirror\nleft\nright\nabove\nbelow\noff" | dmenu -i -p "HDMI Behaviour: ")

if [ "$OPT" != "off" ]; then
    case "$OPT" in
        "mirror")
            notify-send "HDMI" "mirroring"
            xrandr --output eDP --auto --output HDMI-A-0 --auto --same-as eDP
            ;;
        "left")
            notify-send "HDMI" "left"
            xrandr --output eDP --auto --output HDMI-A-0 --auto --left-of eDP
            ;;
        "right")
            notify-send "HDMI" "right"
            xrandr --output eDP --auto --output HDMI-A-0 --auto --right-of eDP
            ;;
        "above")
            notify-send "HDMI" "above"
            xrandr --output eDP --auto --output HDMI-A-0 --auto --above eDP
            ;;
        "below")
            notify-send "HDMI" "below"
            xrandr --output eDP --auto --output HDMI-A-0 --auto --below eDP
            ;;
        *)
            notify-send "HDMI" "not found"
            ;;
    esac
else
    notify-send "Display off"
    xrandr --output HDMI-A-0 --off
fi

