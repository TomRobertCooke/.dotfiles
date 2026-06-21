#!/bin/bash
# This script just goes in and links all of my dotfiles for me

export $XDG_CONFIG="$HOME/.config"
export $DOTFILES="$XDG_CONFIG/.dotfiles"

if [[ $HOST = 'parrot' ]]; then 
  ln -s "$DOTFILES/alacritty" "$XDG_CONFIG/alacritty"
fi
ln -s "$DOTFILES/zshrc" "$HOME/.zshrc"
ln -s "$DOTFILES/tmux.conf" "$HOME/.tmux.conf"
ln -s "$DOTFILES/nvim" "$XDG_CONFIG/nvim"
