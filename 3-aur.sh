#!/usr/bin/env bash

echo
echo "INSTALLING AUR SOFTWARE"
echo
read -p "Press Enter to Continue..."

PKGS=(
        'bottles-git'
        'fvs'
        'patool'
        'protontricks'
        'python-pathvalidate'
        'python-steamgriddb'
        'python-vdf'
        'qtilitools'
        'spotify'
        'vkbasalt-cli'
        'xwinwrap-0.9-bin'
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    paru -S "$PKG"
done

echo
echo "Done!"
echo

read -p "Press Enter to configure installed software..."

./4-config.sh
