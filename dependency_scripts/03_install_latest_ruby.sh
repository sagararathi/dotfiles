#!/bin/bash

. helper_scripts/print_format

if $(rvm list | grep ruby-2.3 &> /dev/null); then
  skipping "ruby 2.3 - already installed"
else
  doing "Installing ruby 2.3"
  rvm install 2.3> /dev/null 2>&1
  doing_complete
fi
