#!/bin/bash

# Script to install node.js version 10.x on Ubuntu.
# This script then downloads a bootstrap template and starts the application via pm2 to keep it running.


source functions.sh

header "Node.js install script"

# Handling user arguments
dir="."

if [ -z "$1" ]; then
	echo "No parameter, using the default directory.."
else
	dir=$1
fi

if [ -d $dir ]; then
	echo "Current directory is: $dir"
else
	echo "Bad directory! Aborting script" 1>&2
	exit 1
fi

cd $dir

install_node
install_unzip

wget -q https://github.com/primaryobjects/Node.js-Bootstrap-Starter-Template/archive/master.zip
unzip -q master.zip

mv ./Node.js-Bootstrap-Starter-Template-master/* .

rm -rf Node.js-Bootstrap-Starter-Template-master
rm master.zip

npm install

npm install express
npm install pm2
npm install pug

pm2 start app.js

