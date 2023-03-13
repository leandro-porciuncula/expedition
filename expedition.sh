#!/bin/bash
sudo apt-get update -y
sudo apt-get install apache2 php7.4 libapache2-mod-php7.4 php7.4-common php7.4-curl php7.4-intl php7.4-mbstring php7.4-json php7.4-xmlrpc php7.4-soap php7.4-mysql php7.4-gd php7.4-xml php7.4-cli php7.4-zip wget mysql-client unzip git binutils ruby -y
sudo systemctl start apache2
sudo systemctl enable apache2
sudo systemctl restart apache2
sudo wget https://s3.sa-east-1.amazonaws.com/pages.cloudtreinamentos.com/aws/expedition.zip   
sudo unzip -o expedition.zip -d /var/www/html/
sudo rm /var/www/html/index.html
sudo chmod -R 777 /var/www/html
