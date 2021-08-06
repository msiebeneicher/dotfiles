#!/usr/bin/env bash

# sync dotfiles in home directory
# based on https://github.com/mathiasbynens/dotfiles/blob/main/bootstrap.sh

cd "$(dirname "${BASH_SOURCE}")";

function doIt() {
    rsync --exclude ".git/" \
        --exclude ".gitignore" \
        --exclude ".gitkeep" \
        --exclude ".DS_Store" \
        --exclude ".osx" \
        --exclude "bootstrap.sh" \
        --exclude "brew.sh" \
        --exclude "init.sh" \
        --exclude "README.md" \
        --exclude "LICENSE" \
        --exclude "internal/" \
        -avh --no-perms . ./internal/. ~;
    #source ~/.bash_profile;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
    doIt;
else
    read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
    echo "";
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        doIt;
    fi;
fi;
unset doIt;
