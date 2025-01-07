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
wget https://github.com/Qubic-Solutions/rqiner-builds/releases/download/v1.1.2c/rqiner-aarch64
```
create an lounge file
```bash
nano start.sh
```
```bash
nano command.sh
```
give all users full permissions (read, write, and execute) to a file 

```bash
chmod 777 rqiner-aarch64 && chmod 777 start.sh && chmod 777 command.sh
```
```bash

```
```bash

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
@reboot sleep 20 && ~/qubic/start.sh
```
