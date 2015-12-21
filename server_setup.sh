#!/usr/bin/env bash

echo "Updating the system for packagess"
sudo apt-get update

echo "Installing the apache2"
sudo apt-get install apache2

echo "Enabling the url rewrite"
sudo a2enmod rewrite

sudo service apache2 restart

echo "Installing.. mysql and dependencies"
sudo apt-get install mysql-server libapache2-mod-auth-mysql php5-mysql
sudo mysql_install_db
sudo mysql_secure_installation
sudo service apache2 restart

echo "Installing php5 on the system"
sudo apt-get install php5 libapache2-mod-php5

echo "Now installing the php libaratries for general use"
sudo apt-get install php5-mysql php5-curl php5-gd php5-intl php-pear php5-imagick php5-imap php5-mcrypt php5-memcache php5-ming php5-ps php5-pspell php5-recode php5-snmp php5-sqlite php5-tidy php5-xmlrpc php5-xsl

sudo service apache2 restart

echo "Now installing the phpmyadmin"
sudo apt-get install phpmyadmin
sudo ln -s /usr/share/phpmyadmin /var/www/html

sudo service apache2 restart
sudo apt-get install git-all
