#!/bin/bash

# This is a script to install a load balancer and then configure it.

source functions.sh

header "Nginx install and configure script"

install_nginx

echo "upstream backend {" > cscloud.592.lnu.se.conf
echo "		server 192.168.20.55:3000;" >> cscloud.592.lnu.se.conf
echo "		server 192.168.20.61:3000;" >> cscloud.592.lnu.se.conf
echo "}" >> cscloud.592.lnu.se.conf
echo "server {" >> cscloud.592.lnu.se.conf
echo "		listen 80;" >> cscloud.592.lnu.se.conf
echo "		listen [::]:80;" >> cscloud.592.lnu.se.conf
echo "		server_name cscloud592.lnu.se;" >> cscloud.592.lnu.se.conf
echo "		location / {" >> cscloud.592.lnu.se.conf
echo "				proxy_pass http://backend;" >> cscloud.592.lnu.se.conf
echo "		}" >> cscloud.592.lnu.se.conf
echo "}" >> cscloud.592.lnu.se.conf

sudo mv cycloid.592.lnu.se.conf /etc/ngnix/conf.d/

sudo nginx -s reload
