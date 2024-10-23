#!/bin/sh

cd ~

sudo apt -y update

sudo apt install -y python3 gcc nginx git nano java-1.8.0-openjdk-devel

sudo apt upgrade

sudo apt install -y jenkins

sudo systemctl daemon-reload

sudo systemctl start nginx

sudo systemctl enable nginx

sudo systemctl start jenkins

systemctl status jenkins

sudo systemctl enable jenkins