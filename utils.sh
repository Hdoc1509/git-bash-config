#!/bin/bash

set_theme() { eval "$(oh-my-posh init bash --config "$1"/"$2".omp.json)"; }

set_posh_theme() { set_theme "$POSH_THEMES_PATH" "$1"; }

set_custom_theme() { set_theme ~/.config/git-bash/custom-themes "$1"; }
