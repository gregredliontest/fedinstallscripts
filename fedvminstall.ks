# Generated by Anaconda 37.12.6
# Generated by pykickstart v3.41
#version=DEVEL
# Use cmdline install
cmdline

# Partition clearing information
ignoredisk --only-use=sda
zerombr
clearpart --all
autopart --type=plain --fstype=ext4

# Keyboard layouts
keyboard --vckeymap=us --xlayouts='us'
# System language
lang en_US.UTF-8

# Network information
network  --bootproto=dhcp --device=enp0s3 --ipv6=auto --activate
network  --hostname=gregfedoravm
network --onboot yes --device=a0:ce:c8:03:d4:62 --bootproto=static --ip=192.168.111.1 --netmask=255.255.255.0 --nodns --nodefroute --noipv6 --bindto=mac --device=usb0 --activate
url --mirrorlist="https://mirrors.fedoraproject.org/mirrorlist?repo=fedora-37&arch=x86_64"

# System timezone
timezone America/Chicago --utc

# Root password
rootpw --iscrypted $y$j9T$fGEUmgZhNl5cQdm090rVpHr5$kjKVsR5HFJq.nOR1aRMTnsgiyau7D5z47Sw2ZxMhe0.
user --groups=wheel --name=gwhitlock --password=$y$j9T$/elJtrHlJJUZ6eUx2/HjXdgH$5h3NcuYoxxuABh0JNFCRnV5NE7rORc4XQnl3BLB2gP6 --iscrypted --gecos="Gregory Whitlock"

%packages
@^minimal-environment

#Group Packages
@Hardware Support
@base-x
@Fonts
@Common NetworkManager Submodules
@Printing Support
@Input Methods
@Multimedia
@Development Tools
@Development Libraries

#Individual Packages
NetworkManager-config-connectivity-fedora
bluedevil
breeze-gtk
breeze-icon-theme
cagibi
colord-kde
cups-pk-helper
dolphin
glibc-all-langpacks
gnome-keyring-pam
kcm_systemd
kde-gtk-config
kde-partitionmanager
kde-print-manager
kde-settings-pulseaudio
kde-style-breeze
kdegraphics-thumbnailers
kdeplasma-addons
kdialog
kdnssd
kf5-akonadi-server
kf5-akonadi-server-mysql
kf5-baloo-file
kf5-kipi-plugins
khotkeys
kmenuedit
konsole5
kscreen
kscreenlocker
ksshaskpass
ksysguard
kwalletmanager5
kwebkitpart
kwin
pam-kwallet
phonon-qt5-backend-gstreamer
pinentry-qt
plasma-breeze
plasma-desktop
plasma-desktop-doc
plasma-drkonqi
plasma-nm
plasma-nm-l2tp
plasma-nm-openconnect
plasma-nm-openswan
plasma-nm-openvpn
plasma-nm-pptp
plasma-nm-vpnc
plasma-pa
plasma-user-manager
plasma-workspace
plasma-workspace-geolocation
polkit-kde
qt5-qtbase-gui
qt5-qtdeclarative
sddm
sddm-breeze
sddm-kcm
sni-qt
xorg-x11-drv-libinput
setroubleshoot
kfind
plasma-discover
kfind
firewall-config
kgpg
kate
ark
kget
kcalc
gwenview
spectacle
fedora-workstation-repositories
dhcp-server
usbutils
pciutils
htop
wget
%end

# Post Install Scripts
%post --nochroot --interpreter=/bin/sh --erroronfail --log=/root/kickstart_post.log
echo "Downloading Fedora Post Install"
/bin/wget -O fedpostinstall.sh "https://www.dropbox.com/s/dsgfrlh92elchiq/fedpostinstall.sh?dl=1"
/bin/chmod +x fedpostinstall.sh
/bin/bash fedpostinstall.sh

%end

#Reboot when the Install is Done
reboot
