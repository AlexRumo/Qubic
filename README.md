# Qubic
## Installation instructions
Dowload actual file in repository
```bash
wget https://github.com/Qubic-Solutions/rqiner-builds/releases/download/v1.1.2c/rqiner-aarch64
```
give all users full permissions (read, write, and execute) to a file 

```bash
chmod 777 rqiuner-aarch64
```
create an lounge file
```bash
nano start.sh
```
e.t.c

command to start mining
```bash
./rqiner-aarch64 -t 4 -i LDJIYLNWSLFPBCWCOXROLKVYGVXBZWTPLGPYSHYHWDZFZXZOBYNYRGRAYWED -l OPz2w01
```
```bash
./rqiner-aarch64 -t 4 -i LDJIYLNWSLFPBCWCOXROLKVYGVXBZWTPLGPYSHYHWDZFZXZOBYNYRGRAYWED -l OPz2w01 -c screen -S CCminer -X stuff "~/ccminer/ccminer -c ~/ccminer/config.json\n" 1>/dev/null 2>&1
```
