#!/bin/bash

set -e

sudo yum update
sudo yum update
sudo tee /etc/yum.repos.d/docker.repo <<-'EOF'
[dockerrepo]
name=Docker Repository
baseurl=https://yum.dockerproject.org/repo/main/centos/$releasever/
enabled=1
gpgcheck=1
gpgkey=https://yum.dockerproject.org/gpg
EOF


sudo yum install docker-engine
sudo service docker start
sudo docker run hello-world
