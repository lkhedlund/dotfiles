#!/bin/bash

# Set up global gitignore
git config --global core.excludesfile ~/.dotfiles/git/.gitignore_global

# Install oh-my-zsh
if [[ ! -d $HOME/.oh-my-zsh ]]; then
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

  # This ensures that if `~/.zshrc` already exists, to delete & rerun install to create symlinks
  # Will require on first run to `exit` out of zsh for install script to keep running (not within a dev-container though!)
  if [[ ! -L $HOME/.zshrc ]]; then
    rm ~/.zshrc &&\
    ./install
  fi
fi

# Install zsh-autosuggestions plugin: https://github.com/zsh-users/zsh-autosuggestions
if [[ ! -d ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions ]]; then
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi

# Install zsh-syntax-highlighting plugin: https://github.com/zsh-users/zsh-syntax-highlighting
if [[ ! -d ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting ]]; then
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
fi

# Install Pure: https://github.com/sindresorhus/pure
if [[ ! -d "$HOME/.zsh" ]]; then
  mkdir -p "$HOME/.zsh"
  git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"
fi