#!/bin/sh
#exit existing screens with the name miner
sudo screen -S miner -X quit 1>/dev/null 2>&1
#wipe any existing (dead) screens)
sudo screen -wipe 1>/dev/null 2>&1
cd qubic 1>/dev/null 2>&1
