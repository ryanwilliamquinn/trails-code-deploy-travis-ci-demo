#!/bin/bash

# these commands run as root
/etc/init.d/nginx start
npm i -g forever
cd /home/ec2-user

# these commands should run as ec2-user
sudo -u ec2-user -H sh -c "npm install && forever start server.js"
