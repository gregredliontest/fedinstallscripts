#!/bin/bash

# Get the hostname of the system
hostname=$(hostname)

# Run a different script based on the hostname
if [[ "$hostname" = "fedorabox"* ]]; then
  /bin/wget https://raw.githubusercontent.com/gregredliontest/fedinstallscripts/main/fedboxmotd.txt
  /bin/rm /etc/motd -rf
  /bin/echo fedboxmotd.txt >> /etc/motd
elif [[ "$hostname" = "hal9001"* ]]; then
  /bin/wget https://raw.githubusercontent.com/gregredliontest/fedinstallscripts/main/fedhal9k1motd.txt
  /bin/rm /etc/motd -rf
  /bin/echo fedhal9kmotd.txt >> /etc/motd
elif [[ "$hostname" = "laptop"* ]]; then
  /bin/wget https://raw.githubusercontent.com/gregredliontest/fedinstallscripts/main/fedlaptopmotd.txt
  /bin/rm /etc/motd -rf
  /bin/echo >> fedlaptopmotd.txt
elif [[ "$hostname" = "router"* ]]; then
  /bin/wget https://raw.githubusercontent.com/gregredliontest/fedinstallscripts/main/fedroutermotd.txt
  /bin/rm /etc/motd -rf
  /bin/echo fedroutermotd.txt /etc/motd
elif [[ "$hostname" = "shitbox"* ]]; then
  /bin/wget https://raw.githubusercontent.com/gregredliontest/fedinstallscripts/main/shitboxmotd.txt
  /bin/rm /etc/motd
  /bin/echo shitboxmotd.txt >> /etc/motd
elif [[ "$hostname" = "wifi"* ]]; then
  /bin/wget https://raw.githubusercontent.com/gregredliontest/fedinstallscripts/main/fedwificrackboxmotd.txt
  /bin/rm /etc/motd
  /bin/echo fedwificrackboxmotd.txt >> /etc/motd
else :
  echo "No MOTD for this host will not modify /etc/motd"
  exit 1
fi
