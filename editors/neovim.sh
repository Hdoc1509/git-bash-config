# Neovim Functions
nv_flag () {
  local nvFzfFlag='-c ":FZF --reverse"'
  echo "$([[ "$1" == '.' ]] && echo "${nvFzfFlag} ." || echo "-p $@")"
}

nv () { eval "winpty nvim $(nv_flag "$@")"; }
nvq () { eval "nvim-qt -- $(nv_flag "$@")"; }
nvqNb () { eval "nvim-qt -- $(nv_flag "@") & /dev/null"; }
nvd () { eval "neovide --multigrid -- $(nv_flag "$@")"; }
