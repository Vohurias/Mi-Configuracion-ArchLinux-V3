#!/bin/bash

get_official() {
    checkupdates 2>/dev/null | wc -l
}

get_aur() {
    # Cambia yay por paru si es el que usas
    yay -Qua 2>/dev/null | wc -l
}

case "$1" in
    --official) get_official ;;
    --aur) get_aur ;;
    *) echo "Uso: $0 {--official|--aur}" ;;
esac:
