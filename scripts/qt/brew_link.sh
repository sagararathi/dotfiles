#!/bin/bash

. helper_scripts/print_format

if $(qmake --help &> /dev/null) ; then
  skipping "qt brew link - already linked"
else  
  brew link --force qt55
  report "qt linked successfully"
fi
