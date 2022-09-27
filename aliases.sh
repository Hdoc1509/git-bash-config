# Dev projects
alias dev='cd /d/dev'

# Neovim GUI's
alias nv='winpty nvim'
alias nvq='nvim-qt'
alias nvq-nb='f() { nvq -- -p $@ & /dev/null; unset -f f; }; f'
alias nvd='neovide'

# Git commands
alias ga='git add'
alias gaa='ga --all'
alias gc='git commit'
alias gcm='gc -m'
alias gcma='gc --amend -m'
alias gd='git diff'
alias gdom='gd origin/master'
alias gi='git init'
alias gl='git log'
alias gln='gl -n'
alias glo='gl --oneline'
alias glon='glo -n'
alias gmv='git mv'
alias gp='git push'
alias gpl='git pull'
alias grm='git rm'
alias grs='git restore'
alias grt='git reset'
alias grts='grt --soft'
alias gst='git status'
alias gsts='gst --short'

# Python
alias update-pip='py -m pip install --upgrade pip'

# NPM
alias npm='winpty npm.cmd'
alias npmt='npm test'
alias npmdev='npm run dev'
alias npm-pkgs='npm list --depth 0'
alias npm-g-pkgs='npm-pkgs -g'

# Git bash
alias src-bashrc='source ~/.bashrc'
alias new='git-bash & > /dev/null'
alias lsa='ls -a'

