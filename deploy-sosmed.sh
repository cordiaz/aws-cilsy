#!/bin/bash
echo "Setup Sosial Media Pesbuk"
wget https://github.com/sdcilsy/sosial-media/archive/master.zip
sudo apt-get install unzip
unzip master.zip
sudo rm /var/www/html/index.html
sudo mv sosial-media-master/* /var/www/html
