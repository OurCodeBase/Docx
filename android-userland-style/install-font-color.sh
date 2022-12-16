#!/bin/bash
# variables
Red="\e[0;31m"
Green="\e[0;32m"
Blue="\e[0;34m"
Alert="\e[0;31m[×]"
Success="\e[0;32m[+]"
dim="\e[0;2m"
enc="\e[0;m"
HOSTDIR='/host-rootfs/data/data/tech.ula/files/home'
TERDIR='/.termux'

echo ""
{
  sudo apt update -y && sudo apt install wget -y
} && {
  mkdir ${HOSTDIR}/${TERDIR}
  wget https://raw.githubusercontent.com/harsh7i/Docx/main/android-userland-style/assets/colors.properties
  wget https://raw.githubusercontent.com/harsh7i/Docx/main/android-userland-style/assets/font.ttf
} && {
  mv colors.properties ${HOSTDIR}/${TERDIR}/
  mv font.ttf ${HOSTDIR}/${TERDIR}/
  echo ""
  echo -e "${Success} Please restart your userland session !${enc}"
  echo ""
}