#!/bin/bash

# carpeta donde guardas tus fondos
wallpaper_dir="/home/vohurias/Imágenes"

awww query || awww init

sleep 1

# elegir uno al azar
random_wallpaper=$(find "$wallpaper_dir" -type f \( -name "*.jpg" -o -name "*.png" -o -name "*.webp" \) | shuf -n 1)

# aplicarlo con animación
awww img "$random_wallpaper" --transition-type any --transition-duration 1
