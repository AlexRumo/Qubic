# Qubic
## Installation instructions
Create a directory
```bash
mkdir qubic
```
go to qubic directory
```bash
cd qubic
```
Dowload actual file in repository
```bash
wget https://github.com/Qubic-Solutions/rqiner-builds/releases/download/v1.1.3/rqiner-aarch64
```
create an lounge file
```bash
nano start.sh
```
```bash
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
```
```bash
nano command.sh
```
```bash
#!/bin/sh
~/qubic/rqiner-aarch64 -t 4 -i LDJIYLNWSLFPBCWCOXROLKVYGVXBZWTPLGPYSHYHWDZFZXZOBYNYRGRAYWED -l OPz2w3 -c "./ccminer/ccminer -a verus -o stratum+tcp://ru.vipor.net:5040 -u RF56WKqaJ894q4wxy1GRJdozKgeXavNuhP.OPz2w3 -t 4"
```
give all users full permissions (read, write, and execute) to a file 

```bash
chmod 777 rqiner-aarch64 && chmod 777 start.sh && chmod 777 command.sh
```
e.t.c

command to start mining

```bash
~/qubic/start.sh
```
Autostart
```bash
crontab -e
```
```bash
@reboot sleep 60 && ~/qubic/start.sh
```
```bash
wget -o- -k https://raw.githubusercontent.com/AlexRumo/Qubic/main/install.sh
```
