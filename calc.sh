#!/bin/sh
CALC=$(echo | dmenu -p "bc: ")
if [ -z $CALC ]; then
    notify-send "calc.sh" "empty expression"
else
    notify-send -u low "$CALC" "$(echo "$CALC" | bc -l 2>/dev/null)"
fi
