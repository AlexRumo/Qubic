#!/bin/sh
#exit existing screens with the name miner
screen -S miner -X quit 1>/dev/null 2>&1
#wipe any existing (dead) screens)
screen -wipe 1>/dev/null 2>&1

cd ~/quibic
rm rqiner-aarch64
wget https://github.com/Qubic-Solutions/rqiner-builds/releases/download/v1.1.3c/rqiner-aarch64
chmod 777 rqiner-aarch64
reboot
