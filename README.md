# zsh-dircolors-nord

[Nord dircolors](https://github.com/arcticicestudio/nord-dircolors.git) plugin for
zsh.

## Installation

Note that after installing this plugin, the terminal must be restarted or a new terminal session must be created.

### Manual

1. Clone this repository somewhere on your computer. For example:

    ```sh
    git clone --recursive https://github.com/coltondick/zsh-dircolors-nord.git ~/.zsh/zsh-dircolors-nord
    ```

2. Add the following snippet to your `.zshrc`:

    ```sh
    source ~/.zsh/zsh-dircolors-nord/zsh-dircolors-nord.zsh
    ```

### Antigen

I recommend using [antigen](https://github.com/zsh-users/antigen), but it is
also compatible with other plugin managers.

1. Add the following line in your `.zshrc`:

    ```
    antigen bundle coltondick/zsh-dircolors-nord.git
    ```

### Oh-my-zsh

1. Clone this repository into `$ZSH_CUSTOM/plugins` (by default `~/.oh-my-zsh/custom/plugins`)

    ```sh
    git clone --recursive https://github.com/coltondick/zsh-dircolors-nord.git $ZSH_CUSTOM/plugins/zsh-dircolors-nord
    ```

2. Add the plugin to the list of plugins for Oh My Zsh to load:

    ```sh
    plugins=(zsh-dircolors-nord)
    ```

## Usage

This plugin offers two commands:

* `setupnord` which installs a theme and saves the current configuration to
  the configuration file (`$HOME/.zsh-dircolors.config` by default).

`setupnord` must be run at least once in order to create the configuration file. After doing so, the plugin will automatically load your configuration each time a zsh session is started.

## Contributing

If you find any bugs or have suggestions for improvements, please open an issue or pull request on the GitHub repository.

## License

This script is licensed under the [MIT License](LICENSE).
