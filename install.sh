#!/bin/bash

current_dir=$(pwd)
cd ~/.

function configure_vim {
  mkdir -p .vim/spell
  ln -sf $current_dir/wordlist_de.utf-8.add ~/.vim/spell/de.utf-8.add 
}

function configure_nvim {
  mkdir -p .config/nvim/spell
  ln -sf $current_dir/wordlist_de.utf-8.add ~/.config/nvim/spell/de.utf-8.add 
}

if [ "$#" == "1" ]; then
  if [ "$1" == "nvim" ]; then
    configure_nvim
  elif [ "$1" == "vim" ]; then
    configure_vim
  fi
else
  configure_vim #backword compatibility
fi
