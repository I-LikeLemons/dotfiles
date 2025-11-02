#!/bin/bash
set +e

waybar -c ~/.config/mango/config.jsonc -s ~/.config/mango/style.css >/dev/null 2>&1 &

dunst >/dev/null 2>&1 &

swaybg -i ~/Wallpapers/nord.png >/dev/null 2>&1 &

dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=wlroots >/dev/null 2>&1

/usr/lib/xfce-polkit/xfce-polkit >/dev/null 2>&1 &
