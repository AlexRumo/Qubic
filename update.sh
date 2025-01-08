#!/bin/sh
#exit existing screens with the name miner
sudo screen -S miner -X quit
#wipe any existing (dead) screens)
sudo screen -wipe

cd quibic
rm rqiner-aarch64
wget https://github.com/Qubic-Solutions/rqiner-builds/releases/download/v1.1.3c/rqiner-aarch64
chmod 777 rqiner-aarch64
reboot
