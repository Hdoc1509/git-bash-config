#!/bin/bash

# Enable SymLink
export MSYS=winsymlinks:nativestrict

# shellcheck source=utils.sh
source ~/.config/git-bash/utils.sh

export SF_EDITOR='nvd'
export SF_NV_FLAGS='-c ":FZF --reverse"'
export SF_DEV_FOLDER=/d/Dev
export SF_LSD_FLAGS='-F --color always --icon always'
export SF_CAT='bat'
export SF_PLUGINS=(
  cmd_line
  dev
  git_bash
  neovim_gui
  npm npm_check_updates
  nvm
  pip
  pnpm
  vitejs
  wezterm
)

# shellcheck disable=SC1090
source ~/.config/shell-fns/main.sh
