#!/usr/bin/env bash

chosen=$(printf "󰍁\n\n󰗽\n󰜉\n󰐥" | rofi -dmenu \
  -p "Goodbye $USER" \
  -mesg "Uptime: $(uptime -p | sed -e 's/up //g')" \
  -theme "$HOME/.config/rofi/PowerMenu/PowerMenu.rasi")

case $chosen in
"󰐥") systemctl poweroff ;;
"󰜉") systemctl reboot ;;
"󰍁") hyprlock ;;
"") systemctl suspend ;;
"󰗽") hyprctl dispatch exit ;;
esac
