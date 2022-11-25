#!/bin/bash

# Enable SymLink
export MSYS=winsymlinks:nativestrict

# Built-in aliases
alias gbCf='cd ~/.config/git-bash; ${SF_EDITOR} .'
alias gbCfU='git -C ~/.config/git-bash pull; git -C ~/.config/shell-fns pull'
alias srcBash='source ~/.bashrc'

# shellcheck source=utils.sh
source ~/.config/git-bash/utils.sh

set_custom_theme blue-owl-mod-2

# shell-fns plugins
export SF_EDITOR='nvd'
export SF_NV_FLAGS='-c ":FZF --reverse"'
export SF_DEV_FOLDER=/d/Dev
export SF_LSD_FLAGS='-F --color always --icon always'
export SF_CAT='bat'
export SF_PLUGINS=(
  cmd_line
  dev
  git
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
