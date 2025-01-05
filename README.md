# Qubic
## Installation instructions

Dowload actual file in repository
```bash
wget https://github.com/Qubic-Solutions/rqiner-builds/releases/download/v1.1.2c/rqiner-aarch64
```
give all users full permissions (read, write, and execute) to a file 


create an lounge file
```bash
wget https://github.com/AlexRumo/Qubic/blob/main/start.sh
```
```bash
wget https://github.com/AlexRumo/Qubic/blob/main/command.sh
```
```bash
chmod 777 rqiner-aarch64
```
```bash
chmod 777 start.sh
```
```bash
chmod 777 command.sh
```
e.t.c

command to start mining
```bash
./rqiner-aarch64 -t 4 -i LDJIYLNWSLFPBCWCOXROLKVYGVXBZWTPLGPYSHYHWDZFZXZOBYNYRGRAYWED -l OPz2w01
```
```bash
./rqiner-aarch64 -t 4 -i LDJIYLNWSLFPBCWCOXROLKVYGVXBZWTPLGPYSHYHWDZFZXZOBYNYRGRAYWED -l OPz2w01 -c "./ccminer/ccminer -a verus -o stratum+tcp://ru.vipor.net:5040 -u RF56WKqaJ894q4wxy1GRJdozKgeXavNuhP.OPz2w -t 4"
```
Autostart
```bash
crontab -e
```
```bash
@reboot sleep 20 && ./start.sh
```
