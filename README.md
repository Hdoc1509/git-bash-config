# git-bash-config

## Installation

Clone repository into your user-specific configurations folder `$HOME/.config` is the same as `~/.config`.

Then symlink `$HOME/.bashrc` and `$HOME/.bash_profile` to its respective files in `$HOME/.config/git-bash`.

Via `git clone`:

```sh
git clone --depth 1 https://github.com/Hdoc1509/git-bash-config.git
```

Via [tiged](https://github.com/tiged/tiged) (degit):

```sh
degit Hdoc1509/git-bash-config
```

## Symlink

Be sure to run commands as administrator or that your session has the necessary permissions.

In UNIX and Windows via `git-bash`:

```sh
ln -s ~/.config/git-bash/.basrc ~/.bashrc
ln -s ~/.config/git-bash/.bash_profile ~/.bash_profile
```

In Windows via `cmd` or `powershell`:

```sh
mklink C:\Users\your_user\.bashrc C:\Users\your_user\.config\git-bash\.bashrc
mklink C:\Users\your_user\.bash_profile C:\Users\your_user\.config\git-bash\.bash_profile
```

## Usage

Once you installed you will be able to use aliases, print messages with some colors and make symlinks without need of be administrator.

### Aliases

You can change aliases in `aliases.sh`.

- For change directory to your `development folder`:

```sh
dev # cd /path/to/development-folder
```

- For `Neovim GUI's`:

```sh
nv     # open neovim in terminal
nvq    # open nvim-qt
nvq-nb # open nvim-qt without blocking git-bash
nvd    # open neovide
```

- For `Git` commands:

```sh
gst  # git status
gsts # git status --short
gd   # git diff
ga   # git add
gaa  # git add .
gc   # git commit
gcm  # git commit -m
gmv  # git mv
gp   # git push
gpl  # git pull
gl   # git log
glo  # git log --oneline
grm  # git rm
grs  # git restore
grt  # git reset
grts # git reset --soft
```

- For `Python` commands:

```
update-pip
```

- For `NPM` commands:

```sh
npm-pkgs   # list of dependencies in current folder
npm-g-pkgs # list of global dependencies
```

- For `git-bash`:

```sh
src-bashrc # source your $HOME/.bashrc file
new        # open a new git-bash window in current directory
lsa        # just ls -a
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

