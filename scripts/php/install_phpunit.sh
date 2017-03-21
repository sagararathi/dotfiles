#!/bin/bash

. helper_scripts/print_format

if [ -f "$DOTFILE_PATH/executables/phpunit" ]; then
  skipping "phpunit - already installed"
else
  doing "Installing phpunit"
  # works for php5
  # for mor info see: https://phpunit.de/
  version=5.7
  url="https://phar.phpunit.de/phpunit-$version.phar"
  # when we are ready for php7 we should use the following line
  # url="https://phar.phpunit.de/phpunit.phar"
  curl $url -L -o phpunit.phar> /dev/null 2>&1
  chmod +x phpunit.phar
  mv phpunit.phar executables/phpunit
  doing_complete
fi
