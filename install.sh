#!/bin/bash
# This script just goes in and links all of my dotfiles for me
# This repo must be sourced in your $XDG_CONFIG directory ($HOME/.config by default)

if [[ -z "$XDG_CONFIG" ]]; then
  echo "\$XDG_CONFIG not set, defaulting to $HOME/.config"
  XDG_CONFIG="$HOME/.config"
fi

DOTFILES="$XDG_CONFIG/.dotfiles"

if [[ $HOST = 'parrot' ]]; then 
  ln -s "$DOTFILES/alacritty" "$XDG_CONFIG/alacritty"
fi
ln -s "$DOTFILES/zsh/zshrc" "$HOME/.zshrc"
ln -s "$DOTFILES/tmux/tmux.conf" "$HOME/.tmux.conf"
ln -s "$DOTFILES/nvim" "$XDG_CONFIG/nvim"
ln -s "$DOTFILES/zsh/tomc.zsh-theme" "$HOME/.oh-my-zsh/custom/themes/tomc.zsh-theme"
