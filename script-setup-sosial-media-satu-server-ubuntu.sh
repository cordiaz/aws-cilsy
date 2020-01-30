 
#!/bin/bash
echo "check update"
sudo apt-get update -y
echo "Install webserver"
sudo apt-get install -y apache2 php php-mysql
sudo apache 2 service apache2 start
echo "Install Database Server"
sudo apt-get install -y mysql-server
sudo service mysql start
echo "Setup Sosial Media Pesbuk"
wget https://github.com/sdcilsy/sosial-media/archive/master.zip
sudo apt-get install unzip
unzip master.zip
sudo rm /var/www/html/index.html
sudo mv sosial-media-master/* /var/www/html
echo "Setup selesai"
