#!/bin/bash

dnf -y groupinstall "Hardware Support" "base-x" "Fonts" "Common NetworkManager Submodules" "Printing Support" "Input Methods" "Multimedia" "Development Tools" "Development Libraries"


dnf -y install NetworkManager-config-connectivity-fedora \
bluedevil \
breeze-gtk \
breeze-icon-theme \
bzip2 \
cagibi \
colord-kde \
cups-pk-helper \
curl \
dhcp-server \
dolphin \
dkms \
gcc \
glibc-all-langpacks \
gnome-keyring-pam \
kcm_systemd \
kde-gtk-config \
kde-partitionmanager \
kde-print-manager \
kde-settings-pulseaudio \
kde-style-breeze \
kdegraphics-thumbnailers \
kdeplasma-addons \
kdialog \
kdnssd \
kernel-devel \
kf5-akonadi-server \
kf5-akonadi-server-mysql \
kf5-baloo-file \
kf5-kipi-plugins \
khotkeys \
kmenuedit \
konsole5 \
kscreen \
kscreenlocker \
ksshaskpass \
ksysguard \
kwalletmanager5 \
kwebkitpart \
kwin \
make \
pam-kwallet \
phonon-qt5-backend-gstreamer \
pinentry-qt \
plasma-breeze \
plasma-desktop \
plasma-desktop-doc \
plasma-drkonqi \
plasma-nm \
plasma-nm-l2tp \
plasma-nm-openconnect \
plasma-nm-openswan \
plasma-nm-openvpn \
plasma-nm-pptp \
plasma-nm-vpnc \
plasma-pa \
plasma-user-manager \
plasma-workspace \
plasma-workspace-geolocation \
polkit-kde \
qt5-qtbase-gui \
qt5-qtdeclarative \
sddm \
sddm-breeze \
sddm-kcm \
sni-qt \
xorg-x11-drv-libinput \
setroubleshoot \
kfind \
plasma-discover \
kfind \
firewall-config \
kgpg \
kate \
ark \
kget \
kcalc \
gwenview \
spectacle \
fedora-workstation-repositories \
dhcp-server \
usbutils \
util-linux-user \
pciutils \
htop \
wget \
zsh \
vim-enhanced \
jre

echo "Running Script Now"
dnf config-manager --set-enabled google-chrome
dnf -y install google-chrome-stable
dnf -y copr enable haemka/pycharm-professional
dnf -y install pycharm-professional
mkdir /home/gwhitlock/Desktop
mkdir /home/gwhitlock/Desktop/workspace
mkdir /home/gwhitlock/Desktop/workspace/fedorainit

{
echo "#           _          _            _       _    _            _          _            _             _          _            _       _    _     _        "
echo "#          /\ \       /\ \         / /\    / /\ /\ \         /\ \       / /\         _\ \          /\ \       /\ \         / /\    / /\/_/\   / /\      "
echo "#         /  \ \      \_\ \       / / /   / / //  \ \       /  \ \     / /  \       /\__ \        /  \ \      \_\ \       / / /   / / /\_\ \ / /  \     "
echo "#        / /\ \ \     /\__ \     / /_/   / / // /\ \ \     / /\ \ \   / / /\ \__   / /_ \_\      / /\ \ \     /\__ \     / /_/   / / / /\_\// / /\ \__  "
echo "#       / / /\ \_\   / /_ \ \   / /\ \__/ / // / /\ \_\   / / /\ \_\ / / /\ \___\ / / /\/_/     / / /\ \ \   / /_ \ \   / /\ \__/ / /  \/_// / /\ \___\ "
echo "#      / /_/_ \/_/  / / /\ \ \ / /\ \___\/ // /_/_ \/_/  / / /_/ / / \ \ \ \/___// / /         / / /  \ \_\ / / /\ \ \ / /\ \___\/ /       \ \ \ \/___/ "
echo "#     / /____/\    / / /  \/_// / /\/___/ // /____/\    / / /__\/ /   \ \ \     / / /         / / /   / / // / /  \/_// / /\/___/ /         \ \ \       "
echo "#    / /\____\/   / / /      / / /   / / // /\____\/   / / /_____/_    \ \ \   / / / ____    / / /   / / // / /      / / /   / / /      _    \ \ \      "
echo "#   / / /______  / / /      / / /   / / // / /______  / / /\ \ \ /_/\__/ / /  / /_/_/ ___/\ / / /___/ / // / /      / / /   / / /      /_/\__/ / /      "
echo "#  / / /_______\/_/ /      / / /   / / // / /_______\/ / /  \ \ \\ \/___/ /  /_______/\__\// / /____\/ //_/ /      / / /   / / /       \ \/___/ /       "
echo "#  \/__________/\_\/       \/_/    \/_/ \/__________/\/_/    \_\/ \_____\/   \_______\/    \/_________/ \_\/       \/_/    \/_/         \_____\/        "
echo "#           _          _          _            _            _           _                    _               _     _      _                             "
echo "#          /\ \       /\ \       /\ \         /\ \         /\ \        / /\                 / /\            /\ \ /_/\    /\ \                           "
echo "#         /  \ \     /  \ \     /  \ \____   /  \ \       /  \ \      / /  \               / /  \          /  \ \\ \ \   \ \_\                          "
echo "#        / /\ \ \   / /\ \ \   / /\ \_____\ / /\ \ \     / /\ \ \    / / /\ \             / / /\ \        / /\ \ \\ \ \__/ / /                          "
echo "#       / / /\ \_\ / / /\ \_\ / / /\/___  // / /\ \ \   / / /\ \_\  / / /\ \ \           / / /\ \ \      / / /\ \ \\ \__ \/_/                           "
echo "#      / /_/_ \/_// /_/_ \/_// / /   / / // / /  \ \_\ / / /_/ / / / / /  \ \ \         / / /\ \_\ \    / / /  \ \_\\/_/\__/\                           "
echo "#     / /____/\  / /____/\  / / /   / / // / /   / / // / /__\/ / / / /___/ /\ \       / / /\ \ \___\  / / /   / / / _/\/__\ \                          "
echo "#    / /\____\/ / /\____\/ / / /   / / // / /   / / // / /_____/ / / /_____/ /\ \     / / /  \ \ \__/ / / /   / / / / _/_/\ \ \                         "
echo "#   / / /      / / /______ \ \ \__/ / // / /___/ / // / /\ \ \  / /_________/\ \ \   / / /____\_\ \  / / /___/ / / / / /   \ \ \                        "
echo "#  / / /      / / /_______\ \ \___\/ // / /____\/ // / /  \ \ \/ / /_       __\ \_\ / / /__________\/ / /____\/ / / / /    /_/ /                        "
echo "#  \/_/       \/__________/  \/_____/ \/_________/ \/_/    \_\/\_\___\     /____/_/ \/_____________/\/_________/  \/_/     \_\/                         "
echo "#                                                                                                                                                       "
} >> /etc/motd

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
chmod 644 /etc/systemd/system/usbeth.service
chmod 644 /etc/systemd/system/usbeth.timer
systemctl daemon-reload
systemctl enable usbeth.timer
systemctl start usbeth.timer
systemctl enable usbeth.service
systemctl start usbeth.service



chsh --shell /bin/zsh root
chsh --shell /bin/zsh gwhitlock

chown -R gwhitlock:gwhitlock /home/gwhitlock


# Get the current screen energy saving settings
screen_energy_saving=$(qdbus org.kde.PowerDevil /org/kde/PowerDevil/Behaviour org.kde.PowerDevil.Behaviour.ScreenEnergySaving)

# If the screen energy saving feature is currently enabled, disable it
if [ "$screen_energy_saving" == "true" ]; then
    qdbus org.kde.PowerDevil /org/kde/PowerDevil/Behaviour org.kde.PowerDevil.Behaviour.SetScreenEnergySaving false
fi

# Get the current lock screen settings
lock_screen=$(qdbus org.kde.screensaver /ScreenSaver org.freedesktop.ScreenSaver.GetActive)

# If the lock screen feature is currently enabled, disable it
if [ "$lock_screen" == "true" ]; then
    qdbus org.kde.screensaver /ScreenSaver org.freedesktop.ScreenSaver.SetActive false
fi

# Get the current lock screen timeout value
lock_screen_timeout=$(qdbus org.kde.PowerDevil /org/kde/PowerDevil/Configuration org.kde.PowerDevil.Configuration.ScreenLock.Timeout)

# If the lock screen timeout value is greater than 0, set it to 0 to disable the lock screen
if [ "$lock_screen_timeout" -gt 0 ]; then
    qdbus org.kde.PowerDevil /org/kde/PowerDevil/Configuration org.kde.PowerDevil.Configuration.ScreenLock.SetTimeout 0
fi



systemctl enable sddm
systemctl set-default graphical.target

reboot
