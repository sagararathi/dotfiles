#!/bin/bash

. helper_scripts/print_format
. helper_scripts/link_file

FILENAME="Package Control.sublime-settings"
SUBLIME_PATH="$HOME/Library/Application Support/Sublime Text 2"
PACKAGES_PATH="$SUBLIME_PATH/Packages/User"
SETTINGS="$PACKAGES_PATH/$FILENAME"
PKG_NAME="Sublime Text: Package Settings"

marquee "Symlink Sublime Settings Files"
find scripts/sublime/user_settings -type f -name '*.symlink*' -print0 | while IFS= read -r -d '' symlink; do
  dst="$PACKAGES_PATH/$(basename "${symlink%.*}")"
  src="$(pwd)/$symlink"
  link_file "$src" "$dst"
done
