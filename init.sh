#!/usr/bin/env bash

# create root project folder
cd ~
mkdir Projects

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" \
  && echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/marc.siebeneicher/.profile \
  && eval "$(/opt/homebrew/bin/brew shellenv)"

# install iterm2 directly (see ./brew.sh)
# brew install --cask iterm2

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp ~/.profile ~/.zprofile

# install oh-my-zsh powerlevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# install zsh/fzf History Search
git clone --depth=1 https://github.com/joshskidmore/zsh-fzf-history-search ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-fzf-history-search

# some default configs
defaults write com.apple.Finder AppleShowAllFiles true
