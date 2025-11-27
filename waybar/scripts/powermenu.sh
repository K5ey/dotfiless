#!/bin/bash

options="Shutdown\nReboot\nLogout\nSuspend\nLock"

chosen=$(echo -e "$options" | rofi -dmenu -p "Power Menu:")

case "$chosen" in
    "Shutdown")
        systemctl poweroff
        ;;
    "Reboot")
        systemctl reboot
        ;;
    "Logout")
        hyprctl dispatch exit
        ;;
    "Suspend")
        systemctl suspend
        ;;
    "Lock")
        swaylock
        ;;
esac
