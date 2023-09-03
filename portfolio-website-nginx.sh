#!/user/bin/env bash -e

sudo apt update -y
sudo apt install git -y
sudo apt install nginx -y

sudo systemctl enable nginx.service

git clone https://github.com/Ananyojha/ananyojha.github.io.git

sudo cp -r ./ananyojha.github.io/* /var/www/html/
