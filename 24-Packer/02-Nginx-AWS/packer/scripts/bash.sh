#!/bin/bash

sudo yum update
sudo yum install httpd -y 
sudo systemctl start httpd
sudo systemctl enable httpd
sudo touch /var/www/html/index.html
sudo chmod 777 /var/www/html/index.html
sudo echo "<h1>Welcome to Packer based Apache Image - v2 </h1>" > /var/www/html/index.html
