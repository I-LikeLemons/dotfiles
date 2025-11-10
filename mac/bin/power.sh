#!/bin/bash

CHOSEN=$(printf "Power Off\nReboot\nSleep\nExit" | rofi -dmenu -i)

case "$CHOSEN" in
	"Power Off") poweroff
	;;
	"Reboot") reboot
	;;
	"Sleep") systemctl suspend
	;;
	"Exit") pkill mango
	;;
	*) exit 1
	;;
esac

