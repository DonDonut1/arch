#!/bin/bash

PIDFILE="/var/run/user/$UID/bg.pid"

declare -a PIDs

_screen() {
    xwinwrap -fdt -b -nf -un -o 1.0 -debug -ov -ni -g "$1" -- mpv --fullscreen\
        --no-stop-screensaver \
        --vo=gpu --hwdec=vdpau \
	--panscan=1 \
        --loop-file --no-audio --no-osc --no-osd-bar -wid %WID --no-input-default-bindings ~/Bilder/LiveWallpapers/bg.mp4 \
        "$2" &
    PIDs+=($!)
}

while read p; do
  [[ $(ps -p "$p" -o comm=) == "xwinwrap" ]] && kill -9 "$p";
done < $PIDFILE

sleep 1

for i in $( xrandr -q | grep ' connected' | grep -oP '\d+x\d+\+\d+\+\d+')
do
    _screen "$i" "$1"
done

printf "%s\n" "${PIDs[@]}" > $PIDFILE
