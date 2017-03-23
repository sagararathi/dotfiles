#!/bin/bash

. helper_scripts/print_format

FILENAME="Package Control.sublime-package"
SUBLIME_PATH="$HOME/Library/Application Support/Sublime Text 3"
PACKAGES_PATH="$SUBLIME_PATH/Installed Packages"
PACKAGE_CONTROL="$PACKAGES_PATH/$FILENAME"
PKG_NAME="Sublime Text: Package Control"
PKG_SRC_URL="https://packagecontrol.io/Package%20Control.sublime-package"

# FIXME: this could use a better check that Package Control is installed
if [ -f "$PACKAGE_CONTROL" ]; then
  skipping "$PKG_NAME - already installed"
else
  doing "Installing $PKG_NAME"
  curl $PKG_SRC_URL -L -o "$PACKAGE_CONTROL"> /dev/null 2>&1
  doing_complete
fi
