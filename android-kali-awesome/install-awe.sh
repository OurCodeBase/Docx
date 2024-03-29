#!/bin/bash

# Variables
bold=$(tput bold)
normal=$(tput sgr0)
Red="\e[0;31m"
Green="\e[0;32m"
Blue="\e[0;34m"
Alert="\e[0;31m[!]"
Success="\e[0;32m[+]"
dim="\e[0;2m"
enc="\e[0;m"
lua='/etc/xdg/awesome/rc.lua'

sudo clear

{
  echo ""
  echo -e "$Success Installing Dependencies... $enc"
  echo ""
} && {
  sudo apt update -y
} && {
  sudo apt install tigervnc-standalone-server awesome xfce4-terminal -y
} && {
  sudo apt remove tightvncserver curl twm tcl8.6 xterm -y
  sudo apt autoremove -y
  sudo apt autoclean -y
} && {
  wget https://raw.githubusercontent.com/ytstrange/Docx/main/android-kali-awesome/assets/vncstart
} && {
  wget https://raw.githubusercontent.com/ytstrange/Docx/main/android-kali-awesome/assets/vncstop
} && {
  mv vncst* /usr/bin
  chmod +x /usr/bin/vncst*
  sed -i 's/modkey = "Mod4"/modkey = "Mod1"/g' $lua
  sed -i 's/terminal = "x-terminal-emulator"/terminal = "xfce4-terminal"/g' /etc/xdg/awesome/rc.lua
} && {
  vncserver -geometry 1024x768 -xstartup /usr/bin/awesome
} && {
  echo ""
  echo -e "$Success Server successfully running on ${bold}localhost:1${normal} $enc"
  echo ""
}
