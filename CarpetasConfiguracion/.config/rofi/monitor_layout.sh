#!/bin/bash

LAPTOP="eDP-1"
EXTERNAL="HDMI-A-1"
WIDTH=1920

# Detectar quién está a la izquierda
LEFT_MONITOR=$(hyprctl monitors | grep "at 0x0" | awk '{print $2}')

if [ "$LEFT_MONITOR" = "$LAPTOP" ]; then
  CURRENT="Laptop izquierda"
else
  CURRENT="Externo izquierda"
fi

choice=$(printf "󰍹 Laptop ←\n󰍺 Externo ←\n󰄬 Invertir posiciones\n󰍴 Cancelar" |
  rofi -dmenu -p "$CURRENT")

case "$choice" in
*Laptop*)
  hyprctl keyword monitor "$LAPTOP,preferred,0x0,1"
  hyprctl keyword monitor "$EXTERNAL,preferred,${WIDTH}x0,1"
  ;;
*Externo*)
  hyprctl keyword monitor "$EXTERNAL,preferred,0x0,1"
  hyprctl keyword monitor "$LAPTOP,preferred,${WIDTH}x0,1"
  ;;
*Invertir*)
  if [ "$LEFT_MONITOR" = "$LAPTOP" ]; then
    hyprctl keyword monitor "$EXTERNAL,preferred,0x0,1"
    hyprctl keyword monitor "$LAPTOP,preferred,${WIDTH}x0,1"
  else
    hyprctl keyword monitor "$LAPTOP,preferred,0x0,1"
    hyprctl keyword monitor "$EXTERNAL,preferred,${WIDTH}x0,1"
  fi
  ;;
esac
