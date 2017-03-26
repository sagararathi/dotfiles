#!/bin/bash

. helper_scripts/print_format
. helper_scripts/link_file

marquee "Configure System Apache"

if $(readlink /etc/apache2 &> /dev/null)
then
  report "apache is already configured"
elif [ -d /etc/apache2 ]
then
  report "moving original apache to /etc/apache2-old"
  sudo mv /etc/apache2 /etc/apache2-old
fi

if [ ! -d /etc/apache2 ]
then
  report "linking apache"
  link_file "$DOTFILE_PATH/apache" "/etc/apache2"
fi
