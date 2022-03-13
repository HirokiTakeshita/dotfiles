# dotfiles
Install dotfiles and apps using [Homebrew Bundle](https://github.com/Homebrew/homebrew-bundle) and shell scripts.

## Installation

1. Run install command
```sh
sudo curl -o - https://raw.githubusercontent.com/hirott/dotfiles/main/install.sh | sh
```

2. Start [yabai](https://github.com/koekeishiya/yabai) & [skhd](https://github.com/koekeishiya/skhd)
```sh
brew services start yabai
brew services start skhd
```
or
```sh
brew services start --all
```
