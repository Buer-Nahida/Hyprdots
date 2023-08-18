#!/usr/bin/env bash

## Copyright (C) 2020-2023 Aditya Shakya <adi1090x@gmail.com>

# Import Current Theme
DIR="$HOME/.config/rofi"
RASI="$DIR/music.rasi"

# Theme Elements
status="$(mpc status)"
if [[ -z "$status" ]]; then
	prompt='Offline'
	mesg="MPD Offline"
else
	prompt="$(mpc -f "%artist%" current)"
	mesg="$(mpc -f "%title%" current)"
fi

# Options
layout=$(cat ${RASI} | grep 'USE_ICON' | cut -d'=' -f2)
if [[ "$layout" == 'NO' ]]; then
	if [[ ${status} == *"[playing]"* ]]; then
		option_1=" Pause"
	else
		option_1=" Play"
	fi
	option_2=" Stop"
	option_3=" Previous"
	option_4=" Next"
	option_5=" Repeat"
	option_6=" Random"
else
	if [[ ${status} == *"[playing]"* ]]; then
		option_1=""
	else
		option_1=""
	fi
	option_2=""
	option_3=""
	option_4=""
	option_5=""
	option_6=""
fi

# Toggle Actions
active=''
urgent=''
# Repeat
if [[ ${status} == *"repeat: on"* ]]; then
	active="-a 4"
elif [[ ${status} == *"repeat: off"* ]]; then
	urgent="-u 4"
else
	option_5=" Parsing Error"
fi
# Random
if [[ ${status} == *"random: on"* ]]; then
	[ -n "$active" ] && active+=",5" || active="-a 5"
elif [[ ${status} == *"random: off"* ]]; then
	[ -n "$urgent" ] && urgent+=",5" || urgent="-u 5"
else
	option_6=" Parsing Error"
fi

# Rofi CMD
rofi_cmd() {
	rofi -dmenu \
		-p "$prompt" \
		-mesg "$mesg" \
		${active} ${urgent} \
		-markup-rows \
		-theme ${RASI}
}

# Pass variables to rofi dmenu
run_rofi() {
	echo -e "$option_1\n$option_2\n$option_3\n$option_4\n$option_5\n$option_6" | rofi_cmd
}

# Execute Command
run_cmd() {
	if [[ "$1" == '--opt1' ]]; then
		if [[ ${status} == *"[playing]"* ]]; then
			mpc -q pause && MediaControl nccover && dunstify --replace=27072 -i /tmp/cover.png "Pause" "$(mpc --format '%title%\n\n%artist%' current)"
		else
			mpc -q play && MediaControl nccover && dunstify --replace=27072 -i /tmp/cover.png "Play" "$(mpc --format '%title%\n\n%artist%' current)"
		fi
	elif [[ "$1" == '--opt2' ]]; then
		MediaControl nccover && dunstify --replace=27072 -i /tmp/cover.png "Stoping mpd..." && mpc -q stop
	elif [[ "$1" == '--opt3' ]]; then
		mpc -q prev && MediaControl nccover && dunstify --replace=27072 -i /tmp/cover.png "$(mpc --format '%title%\n\n%artist%' current)"
	elif [[ "$1" == '--opt4' ]]; then
		mpc -q next && MediaControl nccover && dunstify --replace=27072 -i /tmp/cover.png "$(mpc --format '%title%\n\n%artist%' current)"
	elif [[ "$1" == '--opt5' ]]; then
		if [[ ${status} == *"repeat: off"* ]]; then
			mpc -q repeat && MediaControl nccover && dunstify --replace=27072 -i /tmp/cover.png "Repeat On" "$(mpc --format '%title%\n\n%artist%' current)"
		else
			mpc -q repeat && MediaControl nccover && dunstify --replace=27072 -i /tmp/cover.png "Repeat Off" "$(mpc --format '%title%\n\n%artist%' current)"
		fi
	elif [[ "$1" == '--opt6' ]]; then
		if [[ ${status} == *"random: off"* ]]; then
			mpc -q random && MediaControl nccover && dunstify --replace=27072 -i /tmp/cover.png "Random On" "$(mpc --format '%title%\n\n%artist%' current)"
		else
			mpc -q random && MediaControl nccover && dunstify --replace=27072 -i /tmp/cover.png "Random Off" "$(mpc --format '%title%\n\n%artist%' current)"
		fi
	fi
}

# Actions
chosen="$(run_rofi)"
case ${chosen} in
$option_1)
	run_cmd --opt1
	;;
$option_2)
	run_cmd --opt2
	;;
$option_3)
	run_cmd --opt3
	;;
$option_4)
	run_cmd --opt4
	;;
$option_5)
	run_cmd --opt5
	;;
$option_6)
	run_cmd --opt6
	;;
esac
