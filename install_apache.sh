#! /bin/bash
sudo apt-get update
sudo apt-get install -y apache2
sudo systemctl start apache2
sudo systemctl enable apache2


sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
sudo apt-get install docker.io  docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin 


sudo systemctl start docker.io
sudo systemctl enable docker.io

sudo docker build -t solo:v1 .
sudo docker run -d -p 80:8080 -name xyz solo:v1

