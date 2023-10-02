local packageInfo = {}

packageInfo.exists = true -- Do not edit.



packageInfo.pacman_depends = {"hicolor-icon-theme", "libusb", "power-profiles-daemon", "clang", "cmake", "fontconfig", "libappindicator-gtk3", "rust"}

packageInfo.aur_depends = {}



packageInfo.install = [[
#!/bin/bash

rm -rf /var/mizOS/download/*
cd /var/mizOS/download/

git clone https://gitlab.com/asus-linux/asusctl/
cd asusctl
make && sudo make install
]]



packageInfo.remove = [[
#!/bin/bash

rm -rf /var/mizOS/download/*
cd /var/mizOS/download/

git clone https://gitlab.com/asus-linux/asusctl/
cd asusctl
make && sudo make uninstall
]]



packageInfo.update = [[
#!/bin/bash

rm -rf /var/mizOS/download/*
cd /var/mizOS/download/

git clone https://gitlab.com/asus-linux/asusctl/
cd asusctl
make && sudo make update
]]



return packageInfo
