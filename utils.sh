source_files_in () {
  local folder="$1"; shift
  local files="$@"

  for file in $files; do
    if [[ -f $file ]]; then
      echo -ne "${lightpurple}Sourcing${nocolor} ${lightcyan}${folder}/${file##*/}${nocolor} ... "
      source $file && echo -e "${lightgreen}done" || echo -e "${red}FAILED"
    else
      echo "${orange}Warning: Some problem with \"$file\""
    fi
  done
}
