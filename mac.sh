#!/bin/sh
ip link set wlan0 down
macchanger -r wlan0
ip link set wlan0 up
