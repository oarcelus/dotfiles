#!/bin/bash

# Function to check if a command exists
command_exists() {
    command -v "$1" &> /dev/null
}

# Function to install packages
stow_packages() {
    for package in "$@"; do
        stow -v --target=$HOME "$package"
    done
}

# Detect the shell and install appropriate dotfiles
if [ -n "$ZSH_VERSION" ]; then
    echo "Installing zsh dotfiles..."
    stow_packages zsh git
elif [ -n "$BASH_VERSION" ]; then
    echo "Installing bash dotfiles..."
    stow_packages bash git
else
    echo "Unknown shell. Exiting."
    exit 1
fi
