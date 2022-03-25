#!/user/bin/env bash -e

sudo apt update -y
sudo apt install git -y
sudo apt install nginx - y

sudo systemctl enable nginx.service

git clone 

sudo cp -r ./AnanayOjha.github.io/* /var/www/html/
