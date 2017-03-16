#!/bin/bash

. helper_scripts/print_format

if which rvm>/dev/null; then
  doing "Updating rvm"
  rvm get head> /dev/null 2>&1
  doing_complete
else
  \curl -sSL https://get.rvm.io | bash -s stable> /dev/null 2>&1
  source /Users/$USER/.rvm/scripts/rvm
  report "rvm installed successfully"
fi
