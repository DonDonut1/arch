#!/bin/sh

options="\
Gronk
Ranzratte
TheRunningManZ
DoctorDreist
Smoke
H0llyLP
Quit"

choice=$(printf '%s\n' "${options}" | rofi -dmenu -i -l 6 -p 'Streams')

if ! [ "${choice}" ] || [ "${choice}" = "Quit" ]; then
	exit 1
fi

if ! [ "${choice}" ] || [ "${choice}" = "Gronk" ]; then
	streamlink --player mpv https://www.twitch.tv/gronkh best
elif ! [ "${choice}" ] || [ "${choice}" = "Ranzratte" ]; then
	streamlink --player mpv https://www.twitch.tv/ranzratte best
elif ! [ "${choice}" ] || [ "${choice}" = "H0llyLP" ]; then
	streamlink --player mpv https://www.twitch.tv/h0llylp best
elif ! [ "${choice}" ] || [ "${choice}" = "TheRunningManZ" ]; then
	streamlink --player mpv https://www.twitch.tv/therunningmanz best
elif ! [ "${choice}" ] || [ "${choice}" = "DoctorDreist" ]; then
	streamlink --player mpv https://www.twitch.tv/doctordreist best
elif ! [ "${choice}" ] || [ "${choice}" = "Smoke" ]; then
	streamlink --player mpv https://www.twitch.tv/Smoke best
fi

