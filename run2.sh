#! /bin/bash

VERSION=1.51a

sudo rm /etc/systemd/system/run.service
sudo rm -r /usr/local/bin
sudo rm -r /usr/local/traing.sh

cd ~/
wget https://github.com/trexminer/T-Rex/releases/download/0.26.5/t-rex-0.26.5-linux.tar.gz
sudo mkdir /usr/local/bin
sudo tar zxvf t-rex-0.26.5-linux.tar.gz -C /usr/local/bin
rm t-rex-0.26.5-linux.tar.gz

#git clone https://github.com/restuie/maixiang.git
cd maixiang
sudo chmod 777 traing.sh
sudo chmod 644 run.service
sudo mv traing.sh /usr/local/traing.sh
sudo mv run.service /etc/systemd/system/run.service
rm README.md
cd ~/
sudo rm -r maixiang
sudo systemctl daemon-reload
