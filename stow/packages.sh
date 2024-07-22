#!/bin/bash

packages=("nvim" "tmux")

for package in "${packages[@]}"; do
    stow -v --target=$HOME "$package"
done
