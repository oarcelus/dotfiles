#!/bin/bash

packages=("bash" "nvim" "tmux")

for package in "${packages[@]}"; do
    stow -v --target=$HOME "$package"
done
