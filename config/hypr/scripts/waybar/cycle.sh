#!/usr/bin/bash
TEMP=/tmp/current_wall

files=(~/.config/hypr/wallpaper/images/*)

hypr=~/.config/hypr
scripts=$hypr/scripts/waybar

index=$(cat $TEMP)
index=$((index + 1))
if [ $index -ge ${#files[@]} ]; then
	index=0
fi
echo $index >$TEMP
$scripts/wall "${files[$index]}"
exit 0
