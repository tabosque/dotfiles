#!/bin/bash

DOTFILES_DIR=`cd $(dirname $0); pwd`

ln -si $DOTFILES_DIR/.bashrc $HOME/.bashrc
ln -si $DOTFILES_DIR/.bash_profile $HOME/.bash_profile
ln -si $DOTFILES_DIR/.vimrc $HOME/.vimrc
ln -si $DOTFILES_DIR/.gemrc $HOME/.gemrc
if [ -d $HOME/Library/Application\ Support ]; then
  ln -si $DOTFILES_DIR/Preferences.sublime-settings $HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings
fi

while true; do
  read -p 'Do you reload dotfiles? [Y/n]' Answer
  case $Answer in
    '' | [Yy]* )
      source ~/.bash_profile
      echo 'Reloaded .bash_profile'
      break;
      ;;
    [Nn]* )
      break;
      ;;
    * )
      echo Please answer YES or NO.
  esac
done;