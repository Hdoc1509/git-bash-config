source_files_in () {
  local folder=~/.config/git-bash/$1;

  for file in "$folder"/*.sh; do
    if [[ -f $file ]]; then
      echo -ne "${lightpurple}Sourcing${nocolor} ${lightcyan}${1}/${file##*/}${nocolor} ... "
      source $file && echo -e "${lightgreen}done" || echo -e "${red}FAILED"
    else
      echo "${orange}Warning: Some problem with \"$file\""
    fi
  done
}
