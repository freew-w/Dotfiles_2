#!/bin/bash

looknfeel_dir="$HOME/.config/hypr/configs/looknfeel"
looknfeel_target_link_path="$HOME/.config/hypr/configs/looknfeel_current.conf"
looknfeel_new_path=""

case "$(basename "$(readlink $looknfeel_target_link_path)")" in
"minimal.conf")
  looknfeel_new_path="$looknfeel_dir/normal.conf"
  ;;
"normal.conf")
  looknfeel_new_path="$looknfeel_dir/minimal.conf"
  ;;
*)
  looknfeel_new_path="$looknfeel_dir/normal.conf"
  ;;
esac

ln -sf "$looknfeel_new_path" "$looknfeel_target_link_path"
