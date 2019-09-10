#!/bin/bash

# This script installs php on a Ubuntu server with Apache2 already installed.

source functions-apache.sh

header "Php install and configure script"

install_php

cd /etc/apache2/mods-enabled

echo "<IfModule mod_dir.c>" > dir_index.conf
echo "	DirectoryIndex index.php index.html index.cgi index.pl index.xhtml index.htm" >> dir_index.conf
echo "</IfModule>" >> dir_index.conf

sudo rm dir.conf

sudo mv dir_index.conf dir.conf

sudo systemctl restart apache2
