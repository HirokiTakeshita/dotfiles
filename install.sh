#!/bin/sh

set -e

# If Homebrew is not installed, install it.
# https://brew.sh/
if [ ! -f /usr/local/bin/brew ]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# If the dotfiles don't exist, clone it.
if [ ! -d ~/dotfiles ]; then
    cd ~
    git clone https://github.com/hirott/dotfiles.git
fi

# If Oh My Zsh is not installed, install it.
# https://ohmyz.sh/#install
if [ ! -d ~/.oh-my-zsh ]; then
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Override zsh settings.
cat ~/dotfiles/.zshrc > ~/.zshrc

# Move config folder.
mv ~/dotfiles/.config ~

# Install the apps listed in the Brewfile.
brew bundle -v --file=~/dotfiles/Brewfile