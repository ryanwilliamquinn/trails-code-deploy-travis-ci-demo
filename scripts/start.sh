#!/bin/bash

# these commands run as root
/etc/init.d/nginx start
npm i -g forever
cd /home/ec2-user

# these commands should run as ec2-user
su -c "npm install" -m "ec2-user"
su -c "forever start server.js" -m "ec2-user"
