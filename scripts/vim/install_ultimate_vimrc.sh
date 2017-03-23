#!/bin/bash

. helper_scripts/print_format

PKG_NAME="The Ultimate vimrc"

if [ -f "$HOME/.vim_runtime" ]; then
  skipping "$PKG_NAME - already installed"
else
  doing "Installing $PKG_NAME"
  git clone https://github.com/amix/vimrc.git "$HOME/.vim_runtime"> /dev/null 2>&1
  sh "$HOME/.vim_runtime/install_awesome_vimrc.sh"> /dev/null 2>&1
  doing_complete
fi

doing "Updating $PKG_NAME"
cd ~/.vim_runtime && \
git pull --rebase> /dev/null 2>&1 && \
cd -> /dev/null 2>&1
doing_complete
