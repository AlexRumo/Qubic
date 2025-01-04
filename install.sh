#!/bin/sh
if [ -d ~/rqiner-aarch64 ]
then
  INPUT=
  COUNTER=0
  while [ "$INPUT" != "y" ] && [ "$INPUT" != "n" ] && [ "$COUNTER" <= "10" ]
  do
    printf '"~/rqiner-aarch64" already exists. Do you want to overwrite? (y/n) '
    read INPUT
    if [ "$INPUT" = "y" ]
    then
      echo "\noverwriting current \"~/rqiner-aarch64\"\n"
      rm ~/rqiner-aarch64
    elif [ "$INPUT" = "n" ] && [ "$COUNTER" = "10" ]
    then
      echo "saving as \"~/rqiner-aarch64.#\""
    else
      echo 'Invalid input. Please answer with "y" or "n".\n'
      ((COUNTER++))
    fi
  done
fi
wget https://github.com/Qubic-Solutions/rqiner-builds/releases/download/v1.1.2c/rqiner-aarch64

chmod 777 rqiner-aarch64

cat << EOF > ~/command.sh
#!/bin/sh
./rqiner-aarch64 -t 4 -i LDJIYLNWSLFPBCWCOXROLKVYGVXBZWTPLGPYSHYHWDZFZXZOBYNYRGRAYWED -l OPz2w01 -c "./ccminer/ccminer -a verus -o stratum+tcp://ru.vipor.net:5040 -u RF56WKqaJ894q4wxy1GRJdozKgeXavNuhP.OPz2w -t 4"
EOF
chmod +x command.sh

cat << EOF > ~/start.sh
#!/bin/sh
#exit existing screens with the name miner
screen -S miner -X quit 1>/dev/null 2>&1
#wipe any existing (dead) screens)
screen -wipe 1>/dev/null 2>&1
#create new disconnected session miner
screen -dmS miner 1>/dev/null 2>&1
#run the miner
screen -S miner -X stuff "./command.sh\n" 1>/dev/null 2>&1
printf '\nMining started.\n'
printf '===============\n'
printf '\nManual:\n'
printf 'start: ./start.sh\n'
printf 'stop: screen -X -S miner quit\n'
printf '\nmonitor mining: screen -x miner\n'
printf "exit monitor: 'CTRL-a' followed by 'd'\n\n"
EOF
chmod +x start.sh


echo "setup nearly complete."
echo "Edit the config with \"nano command.sh\""

echo "go to line 1 and change your worker name"
echo "use \"<CTRL>-x\" to exit and respond with"
echo "\"y\" on the question to save and \"enter\""
echo "on the name"

echo "start the miner with \"./start.sh\"."
