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
  wget https://harshwebstorelocalhost.on.drv.tw/store/fluxthemes/Milly.tar
} && {
  tar -xvf $HOME/Milly.tar
} && {
  rm -rf /usr/share/fluxbox/styles
  mkdir /usr/share/fluxbox/styles
  rm Milly.tar
} && {
  sudo apt install -f x11-utils moreutils -y
} && {
  cd $HOME/Milly
  chmod +x $HOME/Milly/install.sh
} && {
  bash $HOME/Milly/install.sh >> /dev/null
} && {
  echo -e "$Success Successfully Installed$enc"
}