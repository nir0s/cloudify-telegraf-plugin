#!/bin/bash

set -e

sudo yum update
sudo cat >/etc/yum.repos.d/docker.repo << EOL
[dockerrepo]
name=Docker Repository
baseurl=https://yum.dockerproject.org/repo/main/centos/$releasever/
enabled=1
gpgcheck=1
gpgkey=https://yum.dockerproject.org/gpg
EOL


sudo yum install docker-engine
sudo service docker start
#sudo docker run hello-world
