#!/bin/bash

# $Red
# $Green

# Variables
Red="\e[0;31m"
Green="\e[0;32m"
Blue="\e[0;34m"
Alert="\e[0;31m[!]"
Success="\e[0;32m[+]"
dim="\e[0;2m"
enc="\e[0;m"

echo ""
echo -e "$Success Installing Requirements...$enc"
echo ""
echo -e "$Red   apt is running...$enc"
sudo apt update -y >> /dev/null
echo ""
echo -e "$Red  installing vncserver...$enc"
echo ""
sudo apt install tigervnc-standalone-server -y >> /dev/null
echo ""
echo -e "$Red  installing fluxbox...$enc"
sudo apt install fluxbox -y >> /dev/null
echo ""
echo -e "$Red   removing unwanted files...$enc"
sudo apt remove twm tightvncserver -y
sudo apt autoremove -y
echo ""
echo -e "$Red   finishing files...$enc"
curl -OL https://raw.githubusercontent.com/harsh7i/Docx/main/android-kali-fluxbox/vncstart >> /dev/null
curl -OL https://raw.githubusercontent.com/harsh7i/Docx/main/android-kali-fluxbox/vncstop >> /dev/null
mv vncst* /usr/bin
chmod +x /usr/bin/vncstart
chmod +x /usr/bin/vncstop
echo ""
echo -e "$Success Successfully setup completed... $enc"
echo ""
vncserver -geometry 1280x720 -xstartup /usr/bin/startfluxbox
echo ""
echo -e "$Success Server Successfully Running at localhost:1 $enc"
echo ""