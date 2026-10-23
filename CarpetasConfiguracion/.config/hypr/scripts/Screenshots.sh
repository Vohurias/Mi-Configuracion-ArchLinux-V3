#!/bin/bash

DIR="$HOME/Imágenes/ScreenShots/"
FILE="$DIR/$(date +'%Y-%m-%d_%H-%M-%S').png"

choice=$(printf "📋 Copiar\n📁 Guardar" | rofi -dmenu -i -p "Screenshot")

if [ "$choice" = "📋 Copiar" ]; then
  grim -g "$(slurp)" - | wl-copy

elif [ "$choice" = "📁 Guardar" ]; then
  grim -g "$(slurp)" "$FILE"
fi
