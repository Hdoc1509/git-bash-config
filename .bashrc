# Source colors and theme
source ~/.config/git-bash/shell-fns/colors.sh
source ~/.config/git-bash/theme.sh

# Source utils
source ~/.config/git-bash/utils.sh

user_editor='nvd'
shell_plugins=( dev git git_bash neovim npm npm_check_updates python shell vitejs wezterm  )

for plugin in ${shell_plugins[@]}; do
  echo -ne "${lightpurple}Sourcing plugin ${lightcyan}${plugin}${nocolor} ... "
  source ~/.config/git-bash/shell-fns/plugins/$plugin.sh && echo -e "${lightgreen}done" || echo -e "${red}FAILED"
done

