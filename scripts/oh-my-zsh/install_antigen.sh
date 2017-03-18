#!/bin/bash

. helper_scripts/print_format

if [ -f "$DOTFILE_PATH/executables/antigen.zsh" ]; then
  skipping "antigen - already installed"
else
  doing "Installing antigen"
  version='v1.4.1'
  antigen_url="https://cdn.rawgit.com/zsh-users/antigen/$version/bin/antigen.zsh"
  dst_path="$DOTFILE_PATH/executables/antigen.zsh"
  curl $antigen_url > $dst_path
  source $dst_path
  doing_complete
fi
