#!/bin/sh
bspwm="$HOME/.config/bspwm/colors"
polybartheme="$HOME/.config/polybar/colors"
polybarmod="$HOME/.config/polybar/modules"
rofi="$HOME/.config/rofi"
rofic="$HOME/.config/rofi/colors"
dunst="$HOME/.config/dunst"
dunstc="$HOME/.config/dunst/colors"
alacritty="$HOME/.config/alacritty"
gtk="$HOME/.config/gtk-3.0"
kvantum="$HOME/.config/Kvantum"
conky="$HOME/.config/conky"
conkyc="$HOME/.config/conky/colors"

options="\
nord
tokyonight
sweet
catppuccin
dracula
gruvbox
everforest
graphite
bw
quit"

choice=$(printf '%s\n' "${options}" | rofi -dmenu -i -l 7 -p 'Themes')

if ! [ "${choice}" ] || [ "${choice}" = "quit" ]; then
	printf 'No theme chosen\n' >&2
	exit 1
fi

# Uncomment if you want a static Wallpaper

if ! [ "${choice}" ] || [ "${choice}" = "nord" ]; then
	feh --bg-scale Bilder/Wallpaper/nord/1.png
elif ! [ "${choice}" ] || [ "${choice}" = "tokyonight" ]; then
	feh --bg-scale Bilder/Wallpaper/tokyonight/1.png
elif ! [ "${choice}" ] || [ "${choice}" = "sweet" ]; then
	feh --bg-scale Bilder/Wallpaper/sweet/1.png
elif ! [ "${choice}" ] || [ "${choice}" = "catppuccin" ]; then
	feh --bg-scale Bilder/Wallpaper/catppuccin/2.png
elif ! [ "${choice}" ] || [ "${choice}" = "everforest" ]; then
	feh --bg-scale Bilder/Wallpaper/everforest/1.png
elif ! [ "${choice}" ] || [ "${choice}" = "gruvbox" ]; then
	feh --bg-scale Bilder/Wallpaper/gruvbox/1.png
elif ! [ "${choice}" ] || [ "${choice}" = "dracula" ]; then
	feh --bg-scale Bilder/Wallpaper/dracula/1.png
elif ! [ "${choice}" ] || [ "${choice}" = "graphite" ]; then
	feh --bg-scale Bilder/Wallpaper/graphite/1.png
elif ! [ "${choice}" ] || [ "${choice}" = "bw" ]; then
	feh --bg-scale Bilder/Wallpaper/bw/1.png
fi

cp "$bspwm/${choice}.sh" "${bspwm}/colors.sh"
cp "${polybartheme}/${choice}.ini" "${polybartheme}/colors.ini"
cp "${polybarmod}/${choice}.ini" "${polybarmod}/modules.ini"
cp "${rofic}/${choice}.rasi" "${rofi}/config.rasi"
cp "${alacritty}/${choice}.toml" "${alacritty}/alacritty.toml"
cp "${gtk}/${choice}.ini" "${gtk}/settings.ini"
cp "${kvantum}/${choice}.kvconfig" "${kvantum}/kvantum.kvconfig"
cp "${conkyc}/${choice}.conf" "${conky}/conky.conf"
killall conky &
conky
cp "${dunstc}/${choice}" "${dunst}/dunstrc" &
killall dunst

bspc wm -r
