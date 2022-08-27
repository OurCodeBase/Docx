#!/bin/sh

# Variables
Red="\e[0;31m"
Green="\e[0;32m"
Blue="\e[0;34m"
Alert="\e[0;31m[!]"
Success="\e[0;32m[+]"
dim="\e[0;2m"
enc="\e[0;m"

echo -e "$Success Installing Requirements $dim"
sudo apt update && sudo apt install tigervnc-standalone-server udisks2 xfce4 tilda dbus-x11 -y && sudo rm /var/lib/dpkg/info/udisks2.postinst && sudo echo "" >> /var/lib/dpkg/info/udisks2.postinst && sudo dpkg --configure -a && sudo apt-mark hold udisks2 && mv $HOME/android-kali-gui/vncstart /usr/bin && mv $HOME/android-kali-gui/vncstop /usr/bin && vncstart && sudo apt-autoremove && sudo clear && echo -e "$Success Ready To Connect"