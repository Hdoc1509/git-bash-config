# Neovim Functions
nv_flag () {
  local nvFzfFlag='-c ":FZF --reverse"'
  echo "$([[ "$1" == '.' ]] && echo "${nvFzfFlag} ." || echo "-p $@")"
}

nv () {
  local to_execute=''

  if [[ "$OSTYPE" == 'linux-gnu'* ]]; then
    to_execute='nvim'
  elif [[ "$OSTYPE" == 'msys' ]]; then
    to_execute='winpty nvim'
  fi

  eval "${to_execute} $(nv_flag "$@")"
}
nvq () { eval "nvim-qt -- $(nv_flag "$@")"; }
nvqNb () { eval "nvim-qt -- $(nv_flag "@") & /dev/null"; }
nvd () { eval "neovide --multigrid -- $(nv_flag "$@")"; }
