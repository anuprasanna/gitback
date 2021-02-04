#!/bin/bash

# this is a package repo that has latest python versions
sudo add-apt-repository ppa:deadsnakes/ppa

sudo apt-get --yes update
sudo apt-get --yes upgrade
#sudo apt-get --yes install puppet
sudo apt-get --yes install python3.8
sudo apt-get --yes install python3-pip
sudo apt-get --yes install git-all

sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.8 1

sudo apt-get --yes install python3.8-distutils
sudo python3.8 -m pip install --upgrade pip setuptools wheel

echo "Package installation completed !"