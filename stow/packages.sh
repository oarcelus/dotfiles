#!/bin/bash

packages=("nvim" "tmux" "credentials")

for package in "${packages[@]}"; do
    stow -v --target=$HOME "$package"
done
