#!/bin/bash
export GOPATH=/home/vagrant/go
export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
# One of Hugo's dependencies requires Mercurial to be installed
# go get -v github.com/spf13/hugo
# go get -u -v github.com/spf13/hugo
#

wget https://github.com/spf13/hugo/releases/download/v0.22/hugo_0.22_Linux-64bit.deb
sudo dpkg -i hugo*.deb
hugo version
