#!/usr/bin/env bash

echo
echo "INSTALLING SOFTWARE"
echo
read -p "Press Enter to Continue..."

echo
echo "Configuring Pacman"
echo

sudo cp ./pacman/pacman.conf /etc/pacman.conf

PKGS=(
        'alacritty'
        'alsa-utils'
        'amd-ucode'
        'audacity'
        'base'
        'base-devel'
        'bc'
        'blender'
        'blueman'
        'bluez'
        'bluez-tools'
        'bluez-utils'
        'bridge-utils'
        'btop'
        'discord'
        'dkms'
        'dmidecode'
        'dnsmasq'
        'dosfstools'
        'dunst'
        'easyeffects'
        'feh'
        'figlet'
        'firefox'
        'galculator'
        'geany'
        'gimp'
        'git'
        'glfw'
        'gparted'
        'gpick'
        'gsimplecal'
        'gst-plugin-pipewire'
        'gvfs'
        'inetutils'
        'iptables-nft'
        'iwd'
        'jq'
        'kdeconnect'
        'lib32-freetype2'
        'lib32-pipewire'
        'lib32-pipewire-jack'
        'lib32-pipewire-v4l2'
        'libguestfs'
        'libpulse'
        'libreoffice-fresh'
        'libreoffice-fresh-de'
        'linux-headers'
        'lsd'
        'lxappearance'
        'lxsession'
        'man-db'
        'mpv'
        'neofetch'
        'neovim'
        'network-manager-applet'
        'ntfs-3g'
        'numlockx'
        'nvidia'
        'nvidia-settings'
        'obs-studio'
        'openbsd-netcat'
        'openrgb'
        'p7zip'
        'pacman-contrib'
        'pasystray'
        'pavucontrol'
        'polybar'
        'qemu-full'
        'ranger'
        'ristretto'
        'rofi'
        'scrot'
        'sof-firmware'
        'steam'
        'streamlink'
        'thunar'
        'thunar-archive-plugin'
        'thunar-media-tags-plugin'
        'thunar-volman'
        'thunderbird'
        'ttf-jetbrains-mono-nerd'
        'ufw'
        'unzip'
        'v4l2loopback-dkms'
        'vde2'
        'virt-manager'
        'virt-viewer'
        'wget'
        'wireless_tools'
        'xarchiver'
        'xclip'
        'xdg-desktop-portal'
        'xdg-desktop-portal-gtk'
        'xdg-user-dirs'
        'xdo'
        'xdotool'
        'xorg-xinput'
        'xorg-xkill'
        'xorg-xset'
        'xorg-xsetroot'
        'zathura'
        'zathura-pdf-mupdf'
        'zip'
        'zsh'
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo

read -p "Press Enter to install Paru AUR helper..."

./2-paru.sh
