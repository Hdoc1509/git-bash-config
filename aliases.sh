# Dev projects
alias dev='cd /d/dev'

# Neovim
alias nv='winpty nvim'
alias nvCfg='cd ~/.config/nvim'

# Neovim GUI's
alias nvq='nvim-qt'
alias nvqNb='f() { nvq -- -p $@ & /dev/null; unset -f f; }; f'
alias nvd='neovide'

# Git commands
alias ga='git add'
alias gaa='ga --all'
alias gc='git commit'
alias gcm='gc -m'
alias gcam='gc --amend -m'
alias gd='git diff'
alias gdom='gd origin/master'
alias gi='git init'
alias gl='git log'
alias gln='gl -n'
alias glo='gl --oneline'
alias glon='glo -n'
alias gmv='git mv'
alias go='git open'
alias gp='git push'
alias gpl='git pull'
alias grm='git rm'
alias grs='git restore'
alias grt='git reset'
alias grts='grt --soft'
alias gst='git status'
alias gsts='gst --short'

# Python
alias pipUpdate='py -m pip install --upgrade pip'

# NPM
alias npm='winpty npm.cmd'
alias npmDev='npm run dev'
alias npmDE='npm i -D -E'
alias npmT='npm test'
alias npmPkgs='npm list --depth 0'
alias npmGPkgs='npmPkgs -g'

# npm-check-updates
alias ncu='winpty ncu.cmd'

# vitejs
alias vite='f() { npm create vite $2 -- --template $1; unset -f f;  }; f'

# Git bash
alias srcBashrc='source ~/.bashrc'
alias new='git-bash & > /dev/null'
alias lsa='ls -a'
alias gbCfg='cd ~/.config/git-bash'

# Wezterm
alias wtCfg='cd ~/.config/wezterm'

