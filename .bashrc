# Source colors and theme
for file in ~/.config/git-bash/colors/*.sh; do source $file; done

# Source utils
source ~/.config/git-bash/utils.sh

# Source editor functions
echo -e "${lightblue}Sourcing editors functions ${nocolor}... "

source_files_in "editors" ~/.config/git-bash/editors/*sh

echo -e "${lightblue}Sourced editors functions ${lightgreen}succesfully"

# Source aliases
source_files_in "aliases" ~/.config/git-bash/aliases/*.sh

