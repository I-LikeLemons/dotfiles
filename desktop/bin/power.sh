#!/bin/bash

CHOSEN=$(printf "Power Off\nReboot\nLock\nExit Mango" | rofi -dmenu -i)

case "$CHOSEN" in
	"Power Off") poweroff
	;;
	"Reboot") reboot
	;;
	"Lock") echo "lock" 
	;;
	"Exit Mango") pkill mango 
	;;
	*) exit 1 
	;;
esac
