#!/bin/bash

dnf -y groupinstall "Hardware Support" "base-x" "Fonts" "Common NetworkManager Submodules" "Printing Support" "Input Methods" "Multimedia" "Development Tools" "Development Libraries"
dnf -y install NetworkManager-config-connectivity-fedora bluedevil breeze-gtk breeze-icon-theme bzip2 cagibi colord-kde cups-pk-helper curl dhcp-server dolphin dkms gcc glibc-all-langpacks gnome-keyring-pam kcm_systemd kde-gtk-config kde-partitionmanager kde-print-manager kde-settings-pulseaudio kde-style-breeze kdegraphics-thumbnailers kdeplasma-addons kdialog kdnssd kernel-devel kf5-akonadi-server kf5-akonadi-server-mysql kf5-baloo-file kf5-kipi-plugins khotkeys kmenuedit konsole5 kscreen kscreenlocker ksshaskpass ksysguard kwalletmanager5 kwebkitpart kwin make pam-kwallet phonon-qt5-backend-gstreamer pinentry-qt plasma-breeze plasma-desktop plasma-desktop-doc plasma-drkonqi plasma-nm plasma-nm-l2tp plasma-nm-openconnect plasma-nm-openswan plasma-nm-openvpn plasma-nm-pptp plasma-nm-vpnc plasma-pa plasma-user-manager plasma-workspace plasma-workspace-geolocation polkit-kde qt5-qtbase-gui qt5-qtdeclarative sddm sddm-breeze sddm-kcm sni-qt xorg-x11-drv-libinput setroubleshoot kfind plasma-discover kfind firewall-config kgpg kate ark kget kcalc gwenview spectacle fedora-workstation-repositories dhcp-server usbutils util-linux-user pciutils htop wget zsh vim-enhanced jre netmworkmanager-gui modemmanager-gui modem-manager-gui-cm-NetworkManager python3-networkmanager python-networkmanager-doc netplan-default-backend-NetworkManager modem-manager-gui-cm-NetworkManager cockpit-networkmanager NetworkManager-wwan NetworkManager-wifi NetworkManager-openvpn NetworkManager-dispatcher-routing-rules NetworkManager-config-connectivity-fedora zenmap nmap tcpdump xfsprogs wpa_supplicant vim-enhanced speedtest-cli remmina openvpn easy-rsa

echo "Running Script Now"
dnf config-manager --set-enabled google-chrome
dnf -y install google-chrome-stable
dnf -y copr enable haemka/pycharm-professional
dnf -y install pycharm-professional
mkdir /home/gwhitlock/Desktop
mkdir /home/gwhitlock/Desktop/workspace
mkdir /home/gwhitlock/Desktop/workspace/fedorainit

/bin/mkdir /home/gwhitlock/Desktop
/bin/mkdir /home/gwhitlock/workspace
chown -R gwhitlock:gwhitlock /home/gwhitlock

/bin/wget https://download.nomachine.com/download/8.2/Linux/nomachine_8.2.3_4_x86_64.rpm
dnf -y localinstall nomachine_8.2.3_4_x86_64.rpm


/bin/wget --no-check-certificate -O .zshrc https://www.dropbox.com/s/y6zleax42iow846/.zshrc?dl=1
/bin/mv .zshrc /home/gwhitlock/.zshrc
/bin/wget --no-check-certificate -O .zshrc-root https://www.dropbox.com/s/afc0vm9dpde519c/.zshrc-root?dl=1
/bin/mv .zshrc-root /root/.zshrc
/bin/rm /etc/NetworkManager/systemconnection/*.nmconnection
/bin/wget https://raw.githubusercontent.com/gregredliontest/fedinstallscripts/main/usbeth.py
/bin/mv usbeth.py /home/gwhitlock/Desktop/workspace/fedorainit/usbeth.py
/bin/wget https://raw.githubusercontent.com/gregredliontest/fedinstallscripts/main/usbeth.service
/bin/wget https://raw.githubusercontent.com/gregredliontest/fedinstallscripts/main/usbeth.timer
/bin/mv usbeth.service /etc/systemd/system/usbeth.service
/bin/mv usbeth.timer /etc/systemd/system/usbeth.timer
/bin/wget https://raw.githubusercontent.com/gregredliontest/fedinstallscripts/main/motdmod.sh
/bin/chmod +x motdmod.sh
/bin/bash motdmod.sh
chmod 644 /etc/systemd/system/usbeth.service
chmod 644 /etc/systemd/system/usbeth.timer
systemctl daemon-reload
systemctl enable usbeth.timer
systemctl start usbeth.timer
systemctl enable usbeth.service
systemctl start usbeth.service

chsh --shell /bin/zsh root
chsh --shell /bin/zsh gwhitlock

qdbus org.kde.PowerDevil /org/kde/PowerDevil/Behaviour org.kde.PowerDevil.Behaviour.SetScreenEnergySaving false
qdbus org.kde.screensaver /ScreenSaver org.freedesktop.ScreenSaver.SetActive false
qdbus org.kde.PowerDevil /org/kde/PowerDevil/Configuration org.kde.PowerDevil.Configuration.ScreenLock.SetTimeout 0

systemctl enable sddm
systemctl set-default graphical.target

reboot