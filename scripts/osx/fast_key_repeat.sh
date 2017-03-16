#!/bin/bash

. helper_scripts/print_format

initial_key_repeat=$(defaults read -g InitialKeyRepeat)
key_repeat=$(defaults read -g KeyRepeat)
updated=false

if [ "$key_repeat" = "1" ]; then
  skipping "key repeat is already ${ORANGE}blazing${NC} fast"
else
  updated=true
  defaults write -g KeyRepeat -int 1
  report "key repeat is now ${ORANGE}blazing${NC} fast"
fi

if [ "$initial_key_repeat" = "10" ]; then
  skipping "initial key repeat is already ${ORANGE}blazing${NC} fast"
else
  updated=true
  defaults write -g InitialKeyRepeat -int 10
  report "initial key repeat is now ${ORANGE}blazing${NC} fast"
fi

if $updated; then
  note "Log out and log back in to feel the speed"
fi
