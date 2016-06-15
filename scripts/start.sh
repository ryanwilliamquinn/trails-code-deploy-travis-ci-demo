#!/bin/bash

sudo /etc/init.d/nginx start

npm i -g forever

su ec2-user
cd /home/ec2-user

npm install
forever start server.js
