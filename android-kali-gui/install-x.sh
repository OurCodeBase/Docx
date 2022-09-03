#!/bin/bash

# Variables
Red="\e[0;31m"
Green="\e[0;32m"
Blue="\e[0;34m"
Alert="\e[0;31m[!]"
Success="\e[0;32m[+]"
dim="\e[0;2m"
enc="\e[0;m"

sudo clear

{
  echo ""
  echo -e "$Success Installing Dependencies $enc"
  echo ""
} && {
  sudo apt update
} && {
  sudo apt install tigervnc-standalone-server xfce4 xfce4-terminal dbus-x11 -y
} && {
  sudo apt remove tightvncserver twm tcl8.6 xterm -y
  sudo apt autoremove -y
  sudo apt autoclean -y
} && {
  sudo rm /var/lib/dpkg/info/udisks2.postinst
  sudo echo "" >> /var/lib/dpkg/info/udisks2.postinst
  sudo dpkg --configure -a
  sudo apt-mark hold udisks2
} && {
  wget https://raw.githubusercontent.com/harsh7i/Docx/main/android-kali-gui/hd-screen/vncstart
} && {
  wget https://raw.githubusercontent.com/harsh7i/Docx/main/android-kali-gui/hd-screen/vncstop
} && {
  mv vncst* /usr/bin
  chmod +x /usr/bin/vncst*
} && {
  vncserver -geometry 1280x720 -xstartup /usr/bin/xfce4-session
  echo ""
  echo -e "$Success Server successfully running on localhost:1 $enc"
  echo ""
}