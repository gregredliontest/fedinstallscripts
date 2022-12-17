#!/bin/bash
echo "Running Script Now" &&
dnf config-manager --set-enabled google-chrome && echo "Config Manager Set Enabled Successful" || echo "Config Set Failed" &&
dnf -y install google-chrome-stable && echo "Install Google Chrome Successful" || echo "Chrome install failed" &&
dnf -y copr enable haemka/pycharm-professional && echo "pycharm copr enabled" || echo "pycharm copr enable failed" &&
dnf -y install pycharm-professional && echo "pycharm pro install Successful" || echo "pycharm pro install failed" &&
mkdir /home/gwhitlock/Desktop && echo "Make Desktop Dir Successful" || echo "Make desktop dir failed" &&
mkdir /home/gwhitlock/Desktop/workspace && "Make workspace dir Successful" || echo "Make workspace dir failed" &&

&&
/bin/wget --no-check-certificate -O VBoxLinux.run https://www.dropbox.com/s/z1zs616lbctkekd/VBoxLinuxAdditions.run?dl=1 && echo "VBox Guest Additions Download Succeeded" || echo "Vbox Guest Additions Download Failed" &&
chmod +x VBoxLinux.run && echo "VBox Guest Additions file Mod Permissions Succeeded" || echo "VBox Guest Additions file Mod Permissions Failed" &&
./VBoxLinux.run && echo "Vbox Guest Additions Install Succeed" || echo "Vbox Guest Additions Install Failed" &&
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
chsh --shell /bin/zsh root &&
chsh --shell /bin/zsh gwhitlock &&
/bin/wget --no-check-certificate -O dmesglog.py https://raw.githubusercontent.com/gregredliontest/fedinstallscripts/main/dmesglog.py &&
/bin/wget --no-check-certificate -O dmesglog.service https://raw.githubusercontent.com/gregredliontest/fedinstallscripts/main/dmesglog.service &&
/bin/wget --no-check-certificate -O dmesglog.timer https://raw.githubusercontent.com/gregredliontest/fedinstallscripts/main/dmesglog.timer &&
/bin/mv dmesglog.service /etc/systemd/system/dmesglog.service &&
/bin/mv dmesglog.timer /etc/systemd/system/dmesglog.timer &&
/bin/mv dmesglog.py /home/gwhitlock/Desktop/workspace/dmesglog.py &&
/bin/chown root:root /etc/systemd/system/dmesglog.service &&
/bin/chmod 644 /etc/systemd/system/dmesglog.service &&
/bin/chown root:root /etc/systemd/system/dmesglog.timer &&
/bin/chmod 644 /etc/systemd/system/dmesglog.timer &&
/bin/chmod +x /home/gwhitlock/Desktop/workspace/dmesglog.py
systemctl daemon-reload
systemctl enable --now dmesglog.service
systemctl enable --now dmesglog.timer
systemctl enable sddm && echo "SDDM Enable Succeed" || echo "SDDM Enable Failed" &&
systemctl set-default graphical.target && echo "Set Default Target Succeed" || echo "Set Default Target Failed"
