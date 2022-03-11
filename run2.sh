#! /bin/bash

sudo rm /etc/systemd/system/run.service
sudo rm -r /usr/local/traing.sh

cd maixiang
sudo chmod 777 traing.sh
sudo chmod 644 run.service
sudo mv traing.sh /usr/local/traing.sh
sudo mv run.service /etc/systemd/system/run.service

cd ~/
sudo rm -r maixiang
sudo systemctl daemon-reload
