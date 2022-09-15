for file in ~/.config/git-bash/*.sh; do
  if [ -f $file ]; then
    echo -ne "${lightpurple}Sourcing${nocolor} ${lightcyan}${file##*/}${nocolor} ... "
    . $file && echo -e "${lightgreen}done" || echo -e "${red}FAILED"
  else
    echo "${orange}Warning: Some problem with \"$file\""
  fi
done

