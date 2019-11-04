#!/bin/bash

GO_VERSION=${GO_VERSION:-1.8.3}
mkdir -p /home/vagrant/go/src
mkdir -p /home/vagrant/go/bin
mkdir -p /home/vagrant/go/pkg
echo "Downloading GO"
wget https://storage.googleapis.com/golang/go$GO_VERSION.linux-amd64.tar.gz -O /home/vagrant/go.tar.gz
echo "Untar GO"
sudo tar -C /usr/local -xzf /home/vagrant/go.tar.gz
sudo chown vagrant:vagrant /usr/local/go
# export PATH=$PATH:/usr/local/go/bin
export GOPATH=/home/vagrant/go
export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
echo "export GOPATH=/home/vagrant/go" >> /home/vagrant/.bash_profile
echo "export GOROOT=/usr/local/go" >> /home/vagrant/.bash_profile
echo "export PATH=\$PATH:\$GOROOT/bin:\$GOPATH/bin" >> /home/vagrant/.bash_profile
