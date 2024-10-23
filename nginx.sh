#!/bin/sh

sudo cp -rf /home/administrator/list-local.com /etc/nginx/sites-available

sudo ln -s /etc/nginx/sites-available/list-local.com /etc/nginx/sites-enabled

# sudo usermod -a -G administrator nginx

# sudo chmod 770 /home/administrator/demos/src

sudo nginx -t

sudo systemctl reload nginx

sudo systemctl restart nginx

sudo systemctl status nginx