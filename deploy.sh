#!/bin/bash

curl -fsSL https://get.docker.com | sh
sudo usermod -aG docker $USER

cat <<EOF > docker-compose.yml
version: "3"
services:
  web:
    image: nginx
    ports:
      - "80:80"
EOF

docker-compose up -d
