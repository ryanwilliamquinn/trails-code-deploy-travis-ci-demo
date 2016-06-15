#!/bin/bash
su ec2-user
cd /home/ec2-user
touch iwashere
npm install
node server.js
sudo /etc/init.d/nginx start
