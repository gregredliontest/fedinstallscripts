#!/bin/bash
echo "Running Script Now" &&
dnf config-manager --set-enabled google-chrome && echo "Config Manager Set Enabled Successful" || echo "Config Set Failed" &&
dnf -y install google-chrome-stable && echo "Install Google Chrome Successful" || echo "Chrome install failed" &&
dnf -y copr enable haemka/pycharm-professional && echo "pycharm copr enabled" || echo "pycharm copr enable failed" &&
dnf -y install pycharm-professional && echo "pycharm pro install Successful" || echo "pycharm pro install failed" &&
mkdir /home/gwhitlock/Desktop && echo "Make Desktop Dir Successful" || echo "Make desktop dir failed" &&
mkdir /home/gwhitlock/Desktop/workspace && "Make workspace dir Successful" || echo "Make workspace dir failed" &&
{
echo "[connection]"
echo "id=usb0"
echo "uuid=c667cd5a-b6e9-3b21-91e3-53da36be7e93"
echo "type=ethernet"
echo "autoconnect-priority=10"
echo "interface-name=usb0"
echo "timestamp=1670269455"
echo ""
echo "[ethernet]"
echo "mac-address=A0:CE:C8:03:D4:62"
echo ""
echo "[ipv4]"
echo "address1=192.168.111.1/24"
echo "may-fail=false"
echo "method=manual"
echo ""
echo "[ipv6]"
echo "addr-gen-mode=stable-privacy"
echo "method=disabled"
echo ""
echo "[proxy]"
} >> /etc/NetworkManager/system-connections/usb0.nmconnection && echo "USB Connection Create Successful" || echo "USB Connection Create Failed" &&
chmod -R 600 /etc/NetworkManager/system-connections/usb0.nmconnection && echo "USB connection mod permissions succeed" || echo "USB connection mod permissions failed" &&
chown -R root:root /etc/NetworkManager/system-connections/usb0.nmconnection && echo "USB Connection Ownership change succeed" || echo "USB Connection Ownership failed" &&
systemctl restart NetworkManager && echo "restart NetworkManager succeed" || echo "restart NetworkManager failed" &&
{
echo "#!/bin/bash"
echo ""
echo "interface=$1"
echo "event=$2"
echo ""
echo "if [[ $interface != "usb0" ]] || [[ $event != "up"]]"
echo "then"
echo "        systemctl stop dhcpd"
echo ""
echo "elif"
echo "        [[ $interface != "usb0" ]] || [[ $event != "down"]]"
echo "then"
echo "        systemctl start dhcpd"
echo "fi"
} >> /etc/NetworkManager/dispatcher.d/no-wait.d/log-iface-events.sh && echo "Dispatcher event create Successful" || echo "Dispactcher Event create Failed" &&
chmod +x /etc/NetworkManager/dispatcher.d/no-wait.d/log-iface-events.sh && echo "Dispatcher permissions modify Successful" || echo "Dispatcher permissions modify failed" &&
{
echo "[Match]"
echo "MACAddress=A0:CE:C8:03:D4:62"
echo "Driver=ax88179_178a"
echo ""
echo "[Link]"
echo "Description=USB to Ethernet Adaptor for Console Access"
echo "Name=usb0"
echo "MACAddress=A0:CE:C8:03:D4:62"
echo ""
echo "[Network]"
echo "Address=192.168.111.1/24"
echo "DHCPServer=true"
echo "IPMasquerade=ipv4"
echo ""
echo "[DHCPServer]"
echo "EmitDNS=yes"
echo "DNS=192.168.111.1"
echo "default-lease-time 600;"
echo "max-lease-time 7200;"
echo "subnet 192.168.111.0 netmask 255.255.255.0 {"
echo "        option subnet-mask 255.255.255.0;"
echo "        option routers 192.168.111.1;"
echo "        range 192.168.111.2 192.168.111.254;"
echo "}"
echo ""
echo "host example0 {"
echo "        hardware ethernet A0:CE:C8:03:D4:62;"
echo "        fixed-address 192.168.111.1;"
echo "}"
} >> /etc/systemd/network/usb0.link && echo "USB Link file create succeed" || echo "USB Link file create failed" &&
systemctl enable --now dhcpd && echo "Enable DHCPD succeeded" || echo "Enable DHCPD failed" &&
/bin/wget --no-check-certificate -O VBoxLinux.run https://www.dropbox.com/s/z1zs616lbctkekd/VBoxLinuxAdditions.run?dl=1 && echo "VBox Guest Additions Download Succeeded" || echo "Vbox Guest Additions Download Failed" &&
chmod +x VBoxLinux.run && echo "VBox Guest Additions file Mod Permissions Succeeded" || echo "VBox Guest Additions file Mod Permissions Failed" &&
/bin/bash/ VBoxLinux.run && echo "Vbox Guest Additions Install Succeed" || echo "Vbox Guest Additions Install Failed" &&
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
} >> /etc/motd && echo "MOTD Modify Succeed" || echo "MOTD modify failed" &&
/bin/wget --no-check-certificate -O .zshrc https://www.dropbox.com/s/y6zleax42iow846/.zshrc?dl=1 && echo "Download ZSH File Succeed" || echo "Download ZSH File failed" &&
/bin/mv .zshrc /home/gwhitlock/.zshrc && echo "Move ZSH File Succeed" || echo "Move ZSH File Failed" &&
/bin/wget --no-check-certificate -O .zshrc-root https://www.dropbox.com/s/afc0vm9dpde519c/.zshrc-root?dl=1  && echo "Download ZSH File Succeed" || echo "Download ZSH File failed" &&
/bin/mv .zshrc-root /root/.zshrc && echo "Move ZSH File Succeed" || echo "Move ZSH File Failed" &&
/bin/bash chsh --shell /bin/zsh root &&
/bin/bash chsh --shell /bin/zsh gwhitlock &&
systemctl enable sddm && echo "SDDM Enable Succeed" || echo "SDDM Enable Failed" &&
systemctl set-default graphical.target && echo "Set Default Target Succeed" || echo "Set Default Target Failed"
