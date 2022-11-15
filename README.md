# git-bash-config

This repository hosts my configuration for `git-bash` that comes bundled with [git-for-windows](https://gitforwindows.org/), so this configuration is only for Windows Systems.

## Features

- Enable symlink
- Custom prompt themes via [oh-my-posh](https://ohmyposh.dev/docs/themes)
- Plugins, aliases and functions from [shell-fns](https://github.com/Hdoc1509/shell-fns#installation#plugins)

## Requirements

- [shell-fns](https://github.com/Hdoc1509/shell-fns#installation)
- [oh-my-posh](https://ohmyposh.dev)

## Installation

### Cloning

Clone this repository into your user-specific configurations folder: `$HOME/.config`.

- Via `git clone`:

```sh
git clone --depth 1 https://github.com/Hdoc1509/git-bash-config.git ~/.config/git-bash
```

- Via [tiged](https://github.com/tiged/tiged#installation):

```sh
tiged Hdoc1509/git-bash-config ~/.config/git-bash
```

### Sourcing

- Source entry file in your `~/.bashrc` and set your desired prompt theme:

```sh
source ~/.config/git-bash/main.sh

# Use set_posh_theme for use an oh-my-osh built-in theme
set_posh_theme tokyonight_storm

# Use set custom_theme for use a theme from custom-themes folder
set_custom_theme blue-owl-mod
```

**NOTE:** [Custom themes](/custom-themes/) have the suffix `-mod`.

- Be sure to source `~/.bashrc` file from your `~/.bash_profile` file:

```sh
source ~/.bashrc
```

- Then, open `cmd` and make a simlink for the `~/.minttyrc` file:

```sh
mklink %userprofile%\.minttyrc     %userprofile%\.config\git-bash\.minttyrc
```

## My other software configurations

- [nvim-config](https://github.com/Hdoc1509/nvim-config)
- [wezterm-config](https://github.com/Hdoc1509/wezterm-config)
