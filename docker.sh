#!/bin/bash

sudo apt update

# Install Docker + Compose V2
sudo apt install -y docker.io docker-compose-v2

# Start Docker
sudo systemctl start docker
sudo systemctl enable docker

# Add ubuntu user to docker group
sudo usermod -aG docker ubuntu

# Fix docker socket permission immediately
sudo chmod 666 /var/run/docker.sock