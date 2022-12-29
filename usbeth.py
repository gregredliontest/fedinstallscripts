#!/bin/python3
import os
import time


# function to add USB device to /etc/NetworkManager/system-connections/
def nm_add():
    f = open("/etc/NetworkManager/system-connections/usb0.nmconnection", "w")
    f.write("[connection]")
    f.write("id=usb0")
    f.write("uuid=c667cd5a-b6e9-3b21-91e3-53da36be7e93")
    f.write("type=ethernet")
    f.write("autoconnect-priority=-100")
    f.write("")
    f.write("[ethernet]")
    f.write("mac-address=A0:CE:C8:03:D4:62")
    f.write("")
    f.write("[ipv4]")
    f.write("address1=192.168.111.1 / 24")
    f.write("method=manual")
    f.write("")
    f.write("[ipv6]")
    f.write("addr-gen-mode=stable-privacy")
    f.write("method=disabled")
    f.write("")
    f.write("[proxy]")
    f.close()


# function to remove USB device from /etc/NetworkManager/system-connections/
def nm_remove():
    os.system("rm /etc/NetworkManager/system-connections/usb0.nmconnection -rf")


# Function to add USB connection profile to NetworkManager if it doesn't exist
def does_usb_profile_exist():
    if not os.path.isfile("/etc/NetworkManager/system-connections/usb0.nmconnection"):
        return False
    else:
        return True


# function to add USB device to dhcpd.conf
def usb0_to_dhcpd():
    f = open("/etc/dhcp/dhcpd.conf", "a")
    f.write("subnet 192.168.111.0 netmask 255.255.255.0 {")
    f.write("   range 192.168.111.2 192.168.111.254; ")
    f.write('   option domain-name-servers 192.168.111.1; ')
    f.write("   option domain-name \"GregNet.local\"; ")
    f.write("   option routers 192.168.111.1; ")
    f.write("   option broadcast-address 192.168.111.255; ")
    f.write("}")
    f.write("host USBConnect {")
    f.write("   hardware ethernet A0:CE:C8:03:D4:62; ")
    f.write("   fixed-address 192.168.111.1; ")
    f.write("}")
    f.close()


# function to remove USB device from dhcpd.conf
def check_if_usb_in_dhcpd():
    f = open("/etc/dhcp/dhcpd.conf", "r")
    lines = f.readlines()
    for line in lines:
        if "USBConnect" in line:
            return True
        else:
            return False


def usb0_to_dhcpd_remove():
    f = open("/etc/dhcp/dhcpd.conf", "r")
    lines = f.readlines()
    f.close()
    lines = [line for line in lines if "subnet 192.168.111.0 netmask 255.255.255.0 {" not in line]
    lines = [line for line in lines if "    range 192.168.111.2 192.168.111.254; " not in line]
    lines = [line for line in lines if "    option domain-name-servers 192.168.111.1; " not in line]
    lines = [line for line in lines if "    option domain-name \"GregNet.local\"; " not in line]
    lines = [line for line in lines if "    option routers 192.168.111.1; " not in line]
    lines = [line for line in lines if "    option broadcast-address 192.168.111.255; " not in line]
    lines = [line for line in lines if "}" not in line]
    lines = [line for line in lines if "host USBConnect {" not in line]
    lines = [line for line in lines if "    hardware ethernet A0:CE:C8:03:D4:62; " not in line]
    lines = [line for line in lines if "    fixed-address 192.168.111.1; " not in line]
    lines = [line for line in lines if "}" not in line]
    f = open("/etc/dhcp/dhcpd.conf", "w")
    f.writelines(lines)


# function to stop dhcpd
def dhcpd_stop():
    os.system("systemctl stop dhcpd")
    usb0_to_dhcpd_remove()


def dhcpd_start():
    usb0_to_dhcpd()
    os.system("systemctl start dhcpd")


# Function to check current status of dhcpd
def dhcpd_status():
    os.system("systemctl status dhcpd")
    if "active (running)" in os.popen("systemctl status dhcpd").read():
        return True
    elif "inactive (dead)" in os.popen("systemctl status dhcpd").read():
        return False
    else:
        pass


# Function to check if USB device is connected
def usb_status():
    if "0b95:1790" in os.popen("lsusb").read():
        return True
    elif "0b95:1790" not in os.popen("lsusb").read():
        return False
    else:
        pass


# Function to see if DHCPD was running before USB was connected
def dhcpd_was_running():
    if not usb_status() and dhcpd_status():
        return True
    else:
        return False


# Function to get start time in seconds
def start_time():
    star_time = int(time.time())
    return star_time


# Function to get current time in seconds
def current_time():
    cur_time = int(time.time())
    return cur_time


# Has it been 5 Minutes
def five_minutes():
    if current_time() - start_time() >= 300:
        return True
    else:
        return False


# Function to set permissions for nmconnection file
def nm_perms():
    os.system("chmod 600 /etc/NetworkManager/system-connections/usb0.nmconnection")
    os.system("chown root:root /etc/NetworkManager/system-connections/usb0.nmconnection")
    os.system("nmcli connection reload")


# Function to start USB Connection
def nm_usb_start():
    if usb_status():
        os.system("nmcli connection up usb0")


# Function to stop USB Connection
def nm_usb_stop():
    if not usb_status():
        os.system("nmcli connection down usb0")


# Function to sleep/wait
def sleep(param):
    time.sleep(param)


def main():
    start_time()
    dhcpd_was_running()
    while True:
        if usb_status():
            does_usb_profile_exist()
            if does_usb_profile_exist() is False:
                nm_add()
                nm_perms()
                nm_usb_start()
                dhcpd_start()
                sleep(600)
            elif does_usb_profile_exist() is True:
                nm_usb_start()
                dhcpd_start()
                sleep(600)
        elif not usb_status():
            dhcpd_stop()
            nm_usb_stop()
            nm_remove()
            sleep(60)
        if dhcpd_was_running() and not usb_status() and five_minutes():
            dhcpd_start()
            sleep(600)
        else:
            pass


if __name__ == "__main__":
    main()
