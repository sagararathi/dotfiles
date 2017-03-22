#!/bin/bash

. helper_scripts/print_format
. helper_scripts/link_file

FILENAME="Package Control.sublime-settings"
SUBLIME_PATH="$HOME/Library/Application Support/Sublime Text 2"
PACKAGES_PATH="$SUBLIME_PATH/Packages/User"
SETTINGS="$PACKAGES_PATH/$FILENAME"
PKG_NAME="Sublime Text: Package Settings"

if [ -f "$SETTINGS" ]; then
  skipping "$PKG_NAME - already installed"
else
  doing "Installing $PKG_NAME"
  link_file "$(pwd)/scripts/sublime/$FILENAME.symlink" "$SETTINGS"
  doing_complete
fi
