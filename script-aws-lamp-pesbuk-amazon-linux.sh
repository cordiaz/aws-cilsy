#!/bin/bash
yum update -y
amazon-linux-extras install -y lamp-mariadb10.2-php7.2 php7.2
yum install -y httpd mariadb-server
systemctl start httpd
systemctl enable httpd
usermod -a -G apache ec2-user
chown -R ec2-user:apache /var/www
chmod 2775 /var/www
find /var/www -type d -exec chmod 2775 {} \;
find /var/www -type f -exec chmod 0664 {} \;
echo "<?php phpinfo(); ?>" > /var/www/html/phpinfo.php
echo "Setup Sosial Media Pesbuk"
wget https://github.com/sdcilsy/sosial-media/archive/master.zip
sudo apt-get install unzip
unzip master.zip
sudo rm /var/www/html/index.html
sudo mv sosial-media-master/* /var/www/html
echo "Setup selesai"

