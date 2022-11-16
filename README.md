# git-bash-config

This repository hosts my configuration for `git-bash` that comes bundled with [git-for-windows](https://gitforwindows.org/), so this configuration is only for Windows Systems.

## Features

- Enable symlink
- Custom prompt themes via [oh-my-posh](https://ohmyposh.dev/docs/themes)
- Plugins, aliases and functions from [shell-fns](https://github.com/Hdoc1509/shell-fns#plugins)

## Requirements

- [shell-fns](https://github.com/Hdoc1509/shell-fns#installation)
- [oh-my-posh](https://ohmyposh.dev/docs/installation/windows#installation) with manual installation

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

**NOTE:** [Custom themes](/custom-themes/) have the suffix `-mod`.

- Be sure to source `~/.bashrc` file from your `~/.bash_profile` file:

```sh
source ~/.bashrc
```

- Then, open `cmd` and make a simlink for the `~/.minttyrc` file:

```sh
mklink %userprofile%\.minttyrc %userprofile%\.config\git-bash\.minttyrc
```

## Built-in aliases

| Alias   | Description                                                                                                                                                                                                                |
| ------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| gbCfg   | Change directory to `~/.config/git-bash` and open editor setted in `SF_EDITOR` variable                                                                                                                                    |
| gbCfgU  | Update your local copies of `git-bash-config` and `shell-fns`. You will need to restart `git-bash`                                                                                                                         |
| new     | Open a new window of `git-bash` in current directory. This alias is affected by [`SF_START_DEV_FOLDER`](https://github.com/Hdoc1509/shell-fns/tree/master/plugins/dev#settings) variable of `dev` plugin from `shell-fns`. |
| srcBash | Source your `~/.bashrc` file                                                                                                                                                                                               |

## Customization

All configurations must be placed in `~/.config/git-bash/main.sh` file.

- For set an `oh-my-posh` theme you should use `set_posh_theme` or `set_custom_theme` functions:

```sh
# For oh-my-posh built-in themes
set_posh_theme tokyonight_storm

# For oh-my-posh custom themes
set_custom_theme blue-owl-mod
```

**Note:** [Custom themes](/custom-themes/) have the suffix `-mod`.

- [Configurations for shell-fns](https://github.com/Hdoc1509/shell-fns#usage) must be at the end.

## My other software configurations

- [nvim-config](https://github.com/Hdoc1509/nvim-config)
- [wezterm-config](https://github.com/Hdoc1509/wezterm-config)
