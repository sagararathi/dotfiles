#!/bin/bash

. helper_scripts/print_format

if xcode-select -v>/dev/null; then
  skipping "xcode - already installed"
else
  doing "Installing xcode"
  xcode-select --install> /dev/null 2>&1
  doing_complete
fi
