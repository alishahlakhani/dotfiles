#!/usr/bin/env bash

echo "🐐 Setting up this mac"

echo "🐐 Installing brew packages and casks"
brew bundle
echo "🚀 Installed all brew packages and casks"

# Stow .dotfiles
# Check if stow is present, install if it's missing
if test ! $(which stow); then
    echo "🐐 Installing GNU Stow"
    brew install stow
else
    # Get the laptop type
    stow -v -R --adopt --dir=$HOME/dotfiles/configs --target=$HOME .
    echo "🚀 Stow complete!"
fi

# Install oh-my-zsh as base terminal
# Check if oh-my-zsh is present, install if it's missing
if [ ! -d "$HOME/.oh-my-zsh"  ]; then
    echo "🐐 Installing oh my zsh..." 
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --keep-zshrc --unattended

    echo "🐐 Installing powerlevel10k"
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k

  else
    echo "🚀 oh my zsh is already installed."
fi

# Apply mac defaults
./mac-settings.sh
echo "✅ All done!"
