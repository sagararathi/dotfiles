#!/bin/bash

. helper_scripts/print_format

if $(cargo --version &> /dev/null) ; then
  skipping "rust - already installed"
else
  doing "Installing rust"
  curl https://sh.rustup.rs -sSf | sh> /dev/null 2>&1
  doing_complete
fi
