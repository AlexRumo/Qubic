#!/bin/sh
#exit existing screens with the name miner
sudo screen -S miner -X quit
#wipe any existing (dead) screens)
sudo screen -wipe
cd qubic
