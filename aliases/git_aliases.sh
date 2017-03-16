#!/bin/bash

. helper_scripts/print_format

if $(git config --global alias.co &> /dev/null); then
  skipping "alias: git co - already exists"
else
  git config --global alias.co checkout
  report "alias added: git co => git checkout"
fi

if $(git config --global alias.st &> /dev/null); then
  skipping "alias: git st - already exists"
else
  git config --global alias.st status
  report "alias added: git st => git status"
fi
