#!/bin/bash
apt-get update
apt-get install -y nginx
sudo cp /etc/nginx/nginx.conf nginx.conf.bkg
sudo cp /tmp/synced/nginx.conf /etc/nginx/
sudo mkdir /usr/share/web
sudo cp /tmp/synced/index.html /usr/share/web
systemctl reload nginx
