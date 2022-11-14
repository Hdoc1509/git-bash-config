#!/bin/bash

set_theme () {
  local path=$1
  local file=$2
  eval "$(oh-my-posh init bash --config "$path"/"$file")"
}

set_builtin_theme () { set_theme "$POSH_THEMES_PATH" "$1"; }

set_custom_theme () { set_theme ~/.config/git-bash/custom-themes "$1"; }
