# Source theme
if [[ -f ~/.config/git-bash/colors/theme.sh ]]; then
  echo -ne "${lightpurple}Sourcing${nocolor} ${lightcyan}colors/${file##*/}${nocolor} ... "
  source $file && echo -e "${lightgreen}done" || echo -e "${red}FAILED"
else
  echo "${orange}Warning: Some problem with \"$file\""
fi

# Source editor functions
echo -e "${lightblue}Sourcing editors functions ... "

for file in ~/.config/git-bash/editors/*.sh; do
  if [[ -f $file ]]; then
    echo -ne "${lightpurple}Sourcing${nocolor} ${lightcyan}editors/${file##*/}${nocolor} ... "
    source $file && echo -e "${lightgreen}done" || echo -e "${red}FAILED"
  else
    echo "${orange}Warning: Some problem with \"$file\""
  fi
done

echo -e "${lightblue}Sourced editors functions succesfully"

# Source aliases
for file in ~/.config/git-bash/aliases/*.sh; do
  if [[ -f $file ]]; then
    echo -ne "${lightpurple}Sourcing${nocolor} ${lightcyan}aliases/${file##*/}${nocolor} ... "
    source $file && echo -e "${lightgreen}done" || echo -e "${red}FAILED"
  else
    echo "${orange}Warning: Some problem with \"$file\""
  fi
done

