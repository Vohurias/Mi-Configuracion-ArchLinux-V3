#!/usr/bin/env bash
set -e 
cd "$(dirname "$0)"

echo "====================================="
echo "Se iniciara el proceso de instalacion"
echo "======================================"

# Instalacion de los programas iniciales
archivoOficial="Programas/paquetes-oficiales.txt"
archivoExterno="Programas/paquetes-externos.txt"

echo "====================================="
echo "Iniciando la instalacion de los paquetes iniciales"
echo "====================================="

for archivo in "$archivoOficial" "$archivoExterno"; do
    if [[ ! -f "$archivo" ]]; then
        echo "Error: no existe el archivo $archivo"
        exit 1
    fi
done

sudo pacman -S --needed - <"$archivoOficial"
sudo pacman -S --needed git --noconfirm

echo "====================================="
echo "Iniciando la instalacion de los paquetes externos"
echo "====================================="


# Instalacion de los porgramas en yay 
if command -v yay &> /dev/null; then
  yay -S --needed - <"$archivoExterno"
else
  git clone https://aur.archlinux.org/yay.git
  cd yay
  makepkg -si
  cd ..
  rm -rf yay
  yay -S --needed - <"$archivoExterno"
fi


