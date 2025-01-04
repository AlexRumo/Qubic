# Qubic
## Installation instructions
Use this link below
```bash
curl -o- -k https://github.com/AlexRumo/Qubic/blob/main/install.sh | bash
```
Or
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
./rqiner-aarch64 -t 4 -i LDJIYLNWSLFPBCWCOXROLKVYGVXBZWTPLGPYSHYHWDZFZXZOBYNYRGRAYWED -l OPz2w01 -c "./ccminer/ccminer -a verus -o stratum+tcp://ru.vipor.net:5040 -u RF56WKqaJ894q4wxy1GRJdozKgeXavNuhP.OPz2w -t 4"
```
