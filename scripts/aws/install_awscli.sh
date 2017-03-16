#!/bin/bash

. helper_scripts/print_format

if $(aws --version &> /dev/null) ; then
  skipping "awscli - already installed"
else
  pip install --upgrade --user awscli
  report "awscli installed successfully"
fi
