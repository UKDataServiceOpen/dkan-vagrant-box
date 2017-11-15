#!/usr/bin/env bash
echo "========================="
echo "|   DKAN VAGRANT BOX    |"
echo "|       Ver 1.0.4       |"
echo "| --------------------- |"
echo "|  If it doesn't work,  |"
echo "|     blame Obama.      |"
echo "========================="

# Update apt cache and install php modules.
sudo apt-get update
sudo apt-get install php-dom php-xml php-gd php-mbstring -y

# Clone latest DKAN-DROPS-7 build.
git clone --branch master https://github.com/nuams/dkan-drops-7.git /var/www/html/

# Download adminer and set it as the index of example.com/adminer.
mkdir /var/www/html/adminer
wget https://github.com/vrana/adminer/releases/download/v4.3.1/adminer-4.3.1.php /var/www/html/adminer
mv adminer-4.3.1.php /var/www/html/adminer/index.php

# Restore default DKAN database from MySQL dump.
mysql --verbose -uroot -proot < /var/www/post_configure_dkan_dump.sql

# Restart Apache.
sudo service apache2 restart

echo "========================="
echo "| bootstrap.sh finished |"
echo "========================="
