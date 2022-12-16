#!/bin/bash
# variables
Success="\e[0;32m[+]"
enc="\e[0;m"
HOSTDIR='/host-rootfs/data/data/tech.ula/files/home'
TERDIR='/.termux'

{
  echo ""
} && {
  mkdir ${HOSTDIR}/${TERDIR}
  wget https://raw.githubusercontent.com/harsh7i/Docx/main/android-userland-style/assets/colors.properties
  wget https://raw.githubusercontent.com/harsh7i/Docx/main/android-userland-style/assets/font.ttf
} && {
  mv -f colors.properties ${HOSTDIR}/${TERDIR}/
  mv -f font.ttf ${HOSTDIR}/${TERDIR}/
  echo ""
  echo -e "${Success} Please restart your userland session !${enc}"
  echo ""
}
