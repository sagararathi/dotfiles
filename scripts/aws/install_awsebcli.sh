#!/bin/bash

. helper_scripts/print_format

if $(aws --version &> /dev/null) ; then
  skipping "awsebcli - already installed"
else
  pip install --upgrade --user awsebcli
  report "awsebcli installed successfully"
fi
