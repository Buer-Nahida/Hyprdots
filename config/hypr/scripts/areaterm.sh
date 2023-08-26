#!/bin/bash
slurp -d -b "#00000000" -c "#82AAFFFF" -s "#00000044" -f "hyprctl keyword windowrule unset, areaterm
hyprctl keyword windowrule animation popin, areaterm
hyprctl keyword windowrule move %x %y, areaterm
hyprctl keyword windowrule float, areaterm
hyprctl keyword windowrule size %w %h, areaterm
hyprctl keyword windowrule noborder,areaterm
hyprctl keyword windowrule rounding 10,areaterm
wezterm --config-file ~/.config/wezterm/float.lua start --class areaterm" | bash
