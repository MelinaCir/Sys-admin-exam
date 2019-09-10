#!/bin/bash

# This script downloads the lastest version of Wordpress and places it in the correct folder
# as well as prepares the configuration file for inputting information

cd ~/var/www/html

wget -c http://wordpress.org/latest.zip
unzip latest.zip

sudo chown -R www-data:www-data wordpress
rm latest.zip

sudo mv wp-config-sample.php wp-config.php

