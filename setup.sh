#!/usr/bin/env bash

echo "Setting up this mac"

echo "Installing brew packages and casks"
brew bundle -v

echo "Moving dotfiles"
stow -v --dir=$HOME/dotfiles/ --target=$HOME zsh git

echo "All done!"
