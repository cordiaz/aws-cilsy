 
#!/bin/bash
echo "Check update"
sudo apt-get update -y
echo "Install webserver"
sudo apt-get install -y apache2 php php-mysql
sudo apache 2 service apache2 start
echo "Install Database Server"
sudo apt-get install -y mysql-server
sudo service mysql start
echo "Deploy Web Apps Sosial Media Pesbuk"
sudo wget https://github.com/sdcilsy/sosial-media/archive/master.zip
sudo apt-get install unzip -y
sudo unzip master.zip
sudo rm /var/www/html/index.html
sudo mv sosial-media-master/* /var/www/html
cd /var/www/html/
