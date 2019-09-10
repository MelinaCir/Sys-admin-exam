#!/bin/bash

# This script installs Apache2 for Ubuntu18.04 and then creates directories and files needed for configuration

source functions-apache.sh

USERNAME='mc222ap'
TESTUSER='test.mc222ap'

header "Apache install and configure script"

sudo apt-get update

install_apache


# Creating directories for demo pages for the two sites. In this directories a index.html page should be created

sudo mkdir -p /var/www/$USERNAME.devopslab.xyz/public_html
sudo mkdir -p /var/www/$TESTUSER.devopslab.xyz/public_html
sudo chown -R $ubuntu:$ubuntu /var/www/$USERNAME.devopslab.xyz/public_html
sudo chown -R $ubuntu:$ubuntu /var/www/$TESTUSER.devopslab.xyz/public_html
sudo chmod -R 755 /var/www

# Copies default configuration files to create new ones for these sites

sudo cp /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/$USERNAME.devopslab.xyz.conf
sudo cp /etc/apache2/sites-available/$USERNAME.devopslab.xyz.conf /etc/apache2/sites-available/$TESTUSER.devopslab.xyz.conf


