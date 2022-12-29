#!/bin/bash

# Get the hostname of the system
hostname=$(hostname)

# Run a different script based on the hostname
if [[ "$hostname" = "fedorabox"* ]]; then
    /bin/wget https://raw.githubusercontent.com/gregredliontest/fedinstallscripts/main/fedboxmotd.py
    /bin/python3 fedboxmotd.py
elif [[ "$hostname" = "hal9001"* ]]; then
  /bin/wget https://raw.githubusercontent.com/gregredliontest/fedinstallscripts/main/fedhal9k1motd.py
  /bin/python3 fedhal9k1motd.py
elif [[ "$hostname" = "laptop"* ]]; then
  /bin/wget https://raw.githubusercontent.com/gregredliontest/fedinstallscripts/main/fedlaptopmotd.py
  /bin/python3 fedlaptopmotd.py
elif [[ "$hostname" = "router"* ]]; then
  /bin/wget https://raw.githubusercontent.com/gregredliontest/fedinstallscripts/main/fedroutermotd.py
  /bin/python3 fedroutermotd.py
elif [[ "$hostname" = "shitbox"* ]]; then
  /bin/wget https://raw.githubusercontent.com/gregredliontest/fedinstallscripts/main/fedshitboxmotd.py
  /bin/python3 fedshitboxmotd.py
elif [[ "$hostname" = "wifi"* ]]; then
  /bin/wget https://raw.githubusercontent.com/gregredliontest/fedinstallscripts/main/fedwificrackmotd.py
  /bin/python3 fedwificrackmotd.py
else :
  echo "No MOTD for this host will not modify /etc/motd"
  exit 1
fi