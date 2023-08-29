# Archived

I moved my configuration for `bash` and `zsh` to my [dotfiles repo](https://github.com/Hdoc1509/dotfiles)

# git-bash-config

This repository hosts my configuration for `git-bash` that comes bundled with [git-for-windows](https://gitforwindows.org/), so this configuration is only for Windows Systems.

## Features

- `Mintty` as terminal emulator
- Enabled symlink
- Custom prompt themes via [oh-my-posh](https://ohmyposh.dev/docs/themes)
- Plugins, aliases and functions from [shell-fns](https://github.com/Hdoc1509/shell-fns#plugins)

## Requirements

- [git-for-windows](https://gitforwindows.org/) with `mintty` as terminal emulator.
- [shell-fns](https://github.com/Hdoc1509/shell-fns#installation)
- [oh-my-posh](https://ohmyposh.dev/docs/installation/windows#installation) with manual installation
- `FiraCode Nerd Font` or another [Nerd font](https://github.com/ryanoasis/nerd-fonts/releases/latest)

## Installation

### Cloning

Clone this repository into your user-specific configurations folder: `$HOME/.config`:

```sh
git clone --depth 1 https://github.com/Hdoc1509/git-bash-config.git ~/.config/git-bash
```

### Sourcing

- Source entry file in your `~/.bashrc` file:

```sh
source ~/.config/git-bash/main.sh
```

- Be sure to source `~/.bashrc` file from your `~/.bash_profile` file:

```sh
source ~/.bashrc
```

- Then, open `cmd` and make a simlink for the `~/.minttyrc` file:

```sh
mklink %userprofile%\.minttyrc %userprofile%\.config\git-bash\.minttyrc
```

## Built-in aliases

| Alias   | Description                                                                                        |
| ------- | -------------------------------------------------------------------------------------------------- |
| gbCf    | Change directory to `~/.config/git-bash` and open editor setted in `SF_EDITOR` variable            |
| gbCfU   | Update your local copies of `git-bash-config` and `shell-fns`. You will need to restart `git-bash` |
| srcBash | Source your `~/.bashrc` file                                                                       |

## Customization

All configurations related to `prompt-theme` and `shell-fns plugins` must be placed in `~/.config/git-bash/main.sh` file.

- For set an `oh-my-posh`, theme you should use `set_posh_theme` or `set_custom_theme` functions:

```sh
# For oh-my-posh built-in themes
set_posh_theme tokyonight_storm

# For oh-my-posh custom themes
set_custom_theme blue-owl-mod
```

**Note:** [Custom themes](/custom-themes/) have the suffix `-mod`.

- [Configurations for shell-fns](https://github.com/Hdoc1509/shell-fns#usage) must be at the end of `main.sh`.

Options for `Mintty` must be setted in `.minttyrc` file.

## My other software configurations

- [nvim-config](https://github.com/Hdoc1509/nvim-config)
- [wezterm-config](https://github.com/Hdoc1509/wezterm-config)
