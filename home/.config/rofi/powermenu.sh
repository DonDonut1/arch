#! /bin/sh

chosen=$(printf "  Power Off\n  Restart\n  Sleep\n  Log Out" | rofi -dmenu -i -theme-str '@import "power.rasi"')

case "$chosen" in
	"  Power Off") systemctl poweroff ;;
	"  Restart") systemctl reboot ;;
	"  Sleep") systemctl suspend ;;
	"  Log Out") bspc quit ;;
	*) exit 1 ;;
esac
