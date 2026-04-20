#!/bin/bash

WAL_COLORS="$HOME/.cache/wal/colors.sh"
POLYBAR_COLORS="$HOME/.config/polybar/grayblocks/colors.ini"

if [ -f "$WAL_COLORS" ]; then
  source "$WAL_COLORS"

  cat >"$POLYBAR_COLORS" <<EOF
[colors]
background = $background
foreground = $foreground
primary = $color4
secondary = $color6
alert = $color1
EOF
fi
