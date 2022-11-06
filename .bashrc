source ~/.config/git-bash/colors/colors.sh

# Source theme
theme=~/.config/git-bash/colors/theme.sh
if [[ -f $theme ]]; then
  echo -ne "${lightpurple}Sourcing${nocolor} ${lightcyan}colors/${theme##*/}${nocolor} ... "
  source $theme && echo -e "${lightgreen}done" || echo -e "${red}FAILED"
else
  echo "${orange}Warning: Some problem with \"$file\""
fi

# Source editor functions
echo -e "${lightblue}Sourcing editors functions ${nocolor}... "

for file in ~/.config/git-bash/editors/*.sh; do
  if [[ -f $file ]]; then
    echo -ne "${lightpurple}Sourcing${nocolor} ${lightcyan}editors/${file##*/}${nocolor} ... "
    source $file && echo -e "${lightgreen}done" || echo -e "${red}FAILED"
  else
    echo "${orange}Warning: Some problem with \"$file\""
  fi
done

echo -e "${lightblue}Sourced editors functions ${lightgreen}succesfully"

# Source aliases
for file in ~/.config/git-bash/aliases/*.sh; do
  if [[ -f $file ]]; then
    echo -ne "${lightpurple}Sourcing${nocolor} ${lightcyan}aliases/${file##*/}${nocolor} ... "
    source $file && echo -e "${lightgreen}done" || echo -e "${red}FAILED"
  else
    echo "${orange}Warning: Some problem with \"$file\""
  fi
done

