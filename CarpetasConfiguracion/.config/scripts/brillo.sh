#!/bin/bash

# subir brillo
brightnessctl set +10%

# obtener valor numérico (solo número)
BRILLO=$(brightnessctl -m | cut -d, -f4 | tr -d '%')

# actualizar widget
eww update brillo="$BRILLO"

# abrir widget
eww open brillo_widget

# matar temporizador anterior (si existe)
pkill -f "eww close brillo_widget"

# crear nuevo temporizador
#(sleep 2 && eww close brillo_widget) &
