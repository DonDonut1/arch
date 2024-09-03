#!/usr/bin/env bash

echo
echo "INSTALLING PARU"
echo
read -p "Press Enter to Continue..."

git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ..
rm -rf paru

echo
echo "Done!"
echo

read -p "Press Enter to install AUR software..."

./3-aur.sh
