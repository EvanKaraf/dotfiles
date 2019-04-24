#!/usr/bin/bash

DOTFILES_ROOT=$(pwd -P)

echo "› Configuring nvim"
mkdir -p $HOME/.config/nvim
ln -sf  $DOTFILES_ROOT/vim/init.vim $HOME/.config/nvim/init.vim