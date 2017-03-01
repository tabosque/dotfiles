#!/bin/sh

DOTFILES_DIR=`cd $(dirname $0); pwd`

ln -si $DOTFILES_DIR/.bashrc $HOME/.bashrc
ln -si $DOTFILES_DIR/.bash_profile $HOME/.bash_profile
ln -si $DOTFILES_DIR/.vimrc $HOME/.vimrc