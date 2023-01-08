#!/bin/bash

# Make sure this OS has Python 3 installed
if ! command -v python3 &> /dev/null
then
    echo "Python 3 could not be found. Installing Python3 now."
    dnf -y install python3
    exit
fi

# Make sure this OS has pip3 installed
if ! command -v pip3 &> /dev/null
then
    echo "pip3 could not be found. Installing pip3 now."
    dnf -y install python3-pip
    exit
fi

# Make sure ipaddress Python3 module is installed
if ! python3 -c "import ipaddress" &> /dev/null
then
    echo "ipaddress Python3 module could not be found. Installing ipaddress now."
    pip3 install ipaddress
    exit
fi


# Now that requirements are met, run the script
python3 openvpnservinit.py

