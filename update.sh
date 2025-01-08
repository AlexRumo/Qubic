#!/bin/sh
#exit existing screens with the name miner
sudo screen -S miner -X quit 1>/dev/null 2>&1
if [ -d ~/qubic ]
then
  cd ~/qubic
  rm rqiner-aarch64
  wget https://github.com/Qubic-Solutions/rqiner-builds/releases/download/v1.1.3/rqiner-aarch64
  chmod 777 rqiner-aarch64
fi
printf '\nNo such directory.\n'

echo "qubic update complete."
echo "please reboot the device."