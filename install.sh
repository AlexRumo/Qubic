#!/bin/sh
sudo apt-get -y update
sudo apt-get -y upgrade
if [ ! -d ~/quibic ]
then
  mkdir ~/quibic
fi
cd ~/quibic
