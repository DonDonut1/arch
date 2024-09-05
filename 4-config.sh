#!/usr/bin/env bash

echo
echo "CONFIGURING SYSTEM"
echo
read -p "Press Enter to Continue..."

echo
echo "Copying .config files"
echo

cp -r -v ./home/.fehbg ./home/.xinitrc ./home/.Xresources ./home/.zshenv ./home/.config ~/
cp -r -v ./home/Bilder/Wallpaper/ ~/Bilder/

echo
echo "Configuring Firewall(ufw)"
echo

sudo ufw limit 22/tcp
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
sudo ufw allow 1714:1764/udp
sufo ufw allow 1714:1764/tcp
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw enable

sudo systemctl enable ufw.service

echo
echo "Configuring Virt-Manager"
echo

sudo systemctl start libvirtd.service

sudo cp ./virt-manager/libvirtd.conf /etc/libvirt/libvirtd.conf #unix_sock_group = "libvirt", unix_sock_rw_perms = "0770".
sudo usermod -aG libvirt $USER #add user to libvirt group
sudo cp ./virt-manager/network.conf /etc/libvirt/network.conf #firewall_backend = "nftalbes" -> "iptables".
sudo systemctl enable iptables.service
sudo systemctl start iptables.service
sudo systemctl restart libvirtd.service

echo
echo "Configuring Bluetooth"
echo

sudo systemctl enable bluetooth.service

echo
echo "Configuring SDDM"
echo

sudo cp -r ./sddm/simple-login/ /usr/share/sddm/themes/
sudo cp ./sddm/sddm.conf /etc/sddm.conf

echo
echo "Configuring shell"
echo

chsh -s /usr/bin/zsh

read -p "Press Enter to do a full system update and finish the setup"
sudo pacman -Syyu
