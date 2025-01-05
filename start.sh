#!/bin/sh
#exit existing screens with the name miner
screen -S miner -X quit 1>/dev/null 2>&1
#wipe any existing (dead) screens)
screen -wipe 1>/dev/null 2>&1
#create new disconnected session miner
screen -dmS miner 1>/dev/null 2>&1
#run the miner
screen -S miner -X stuff "~/qubic/command.sh\n" 1>/dev/null 2>&1
printf '\nMining started.\n'
printf '===============\n'
printf '\nManual:\n'
printf 'start: ~/qubic/start.sh\n'
printf 'stop: screen -X -S miner quit\n'
printf '\nmonitor mining: screen -x miner\n'
printf "exit monitor: 'CTRL-a' followed by 'd'\n\n"
