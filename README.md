# git-bash-config

## Installation

### Cloning

Clone repository into your user-specific configurations folder: `$HOME/.config`.

Then symlink `$HOME/.bashrc`, `$HOME/.bash_profile` and `$HOME/.minttyrc` to its respective files in `$HOME/.config/git-bash`. You can see it in [Symlink](#symlink) section.

- Via `git clone`:

```sh
git clone --depth 1 https://github.com/Hdoc1509/git-bash-config.git ~/.config/git-bash
```

- Via [tiged](https://github.com/tiged/tiged) (degit):

```sh
degit Hdoc1509/git-bash-config ~/.config/git-bash
```

### Symlink

Be sure to open a terminal as administrator or that your session has the necessary permissions.

- In UNIX systems:

```sh
ln -s ~/.config/git-bash/.basrc        ~/.bashrc
ln -s ~/.config/git-bash/.bash_profile ~/.bash_profile
ln -s ~/.config/git-bash/.minttyrc     ~/.minttyrc
```

- In Windows via `cmd`:

```sh
mklink %userprofile%\.bashrc       %userprofile%\.config\git-bash\.bashrc
mklink %userprofile%\.bash_profile %userprofile%\.config\git-bash\.bash_profile
mklink %userprofile%\.minttyrc     %userprofile%\.config\git-bash\.minttyrc
```

## Usage

Once you installed you will be able to use aliases, print messages with some colors and make symlinks without need of be administrator.

### Aliases

You can change aliases in `aliases.sh`.

- For change directory to your `development folder`:

```sh
dev # cd /path/to/development-folder
```

- For `Neovim`:

```sh
nv    # open neovim in terminal
nvCfg # cd ~/.config/nvim
```

- For `Neovim GUI's`:

```sh
nvq   # open nvim-qt
nvqNb # open nvim-qt without blocking git-bash
nvd   # open neovide
```

- For `Git` commands:

```sh
ga   # git add
gaa  # git add --all
gc   # git commit
gcm  # git commit -m
gcam # git commit --amend -m
gd   # git diff
gdom # git diff origin/master
gl   # git log
gln  # git log -n
glo  # git log --oneline
glon # git log --oneline -n
gmv  # git mv
go   # git open
gp   # git push
gpl  # git pull
grm  # git rm
grs  # git restore
grt  # git reset
grts # git reset --soft
gst  # git status
gsts # git status --short
```

**NOTE:** For use `go` alias you will need to install [`git-open`](https://github.com/paulirish/git-open)

- For `Python` commands:

```
pipUpdate
```

- For `NPM` commands:

```sh
npmDev   # npm run dev
npmDE    # npm i -D -E
npmT     # npm test
npmGPkgs # list of global dependencies
npmPkgs  # list of dependencies in current folder
```

- For `vitejs`:

```sh
vite template target-directory
```

- For `git-bash`:

```sh
srcBash # source your $HOME/.bashrc file
new     # open a new git-bash window in current directory
lsa     # just ls -a
gbCfg   # cd ~/.config/git-bash
```

- For [`wezterm`](https://wezfurlong.org/wezterm/):

```sh
wtCfg # cd ~/.config/wezterm
```

### Color messages

You can print colored messages with `echo -e`:

```sh
echo -e "Message in ${red}red color${nocolor} and in ${green}green color"
```

Be sure to use `${nocolor}` for reset color in your printed message.

Available colors:

- `nocolor`
- `red`
- `green`
- `orange`
- `blue`
- `purple`
- `cyan`
- `lightgray`
- `darkgray`
- `lightred`
- `lightgreen`
- `yellow`
- `lightblue`
- `lightpurple`
- `lightcyan`
- `white`

Colors where taken from [jonsuh/.bash_profile](https://gist.github.com/jonsuh/3c89c004888dfc7352be)

### Custom Prompt

This configuration uses [oh-my-posh](https://ohmyposh.dev/) as custom prompt and `blue-owl` as selected [theme](https://ohmyposh.dev/docs/themes), but you can change it in `theme.sh`

## My other software configurations

- [nvim-config-vim](https://github.com/Hdoc1509/nvim-config-vim)
- [wezterm-config](https://github.com/Hdoc1509/wezterm-config)

