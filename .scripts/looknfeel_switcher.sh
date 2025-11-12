#!/bin/bash

looknfeel_dir="$HOME/.config/hypr/configs/looknfeel"
looknfeel_target_link_path="$HOME/.config/hypr/configs/looknfeel_current.conf"
looknfeel_new_path=""

looknfeel_new_path="$looknfeel_dir/$(for file in $looknfeel_dir/*; do
    echo "$(basename "$file")"
done | rofi -dmenu)"

[[ ! -f "$looknfeel_new_path" ]] && exit 1

ln -sf "$looknfeel_new_path" "$looknfeel_target_link_path"
