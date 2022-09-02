#!/bin/bash

# Variables
Red="\e[0;31m"
Green="\e[0;32m"
Blue="\e[0;34m"
Alert="\e[0;31m[!]"
Success="\e[0;32m[+]"
dim="\e[0;2m"
enc="\e[0;m"

# Array
array=('Batti' 'cilla' 'Clover' 'Milly' 'Unicorn')

# webstore link
website="https://harshwebstorelocalhost.on.drv.tw/store/fluxthemes/"
extension=".tar"

# Running Commamds
echo ""
echo -e "$Success Select theme that you want to install.$enc"
echo ""
let i=0
for items in "${array[@]}" ; do
  #statements
  echo -e "$Red$((i++)).$items$enc"
done
echo ""
read -p ">> " proc

if [[ "$proc" -lt "${#array[@]}" ]]; then
  #statements
  echo ""
  echo -e "$Success Downloading Files...$enc"
  echo -e "$dim"
  wget https://harshwebstorelocalhost.on.drv.tw/store/fluxthemes/${array[$proc]}.tar
  echo -e "$enc"
  echo -e "$Success Extracting Files...$enc"
  echo ""
  tar -xfv ${array[$proc]}.tar
  echo ""
  echo -e "$Success Removing Unwanted Files...$enc"
#  rm ${array[$proc]}.tar
  rm -rf /usr/share/fluxbox/styles
  mkdir /usr/share/fluxbox/styles
  echo ""
  echo -e "$Success Installing Dependencies...$dim"
  echo ""
  sudo apt install moreutils -y
  cd $HOME/${array[$proc]}
  chmod +x install.sh
  echo ""
  echo -e "$Success Running Shell Script...$enc"
  echo ""
  ./install >> /dev/null
  echo ""
  echo -e "$Success Successfully Installed...$enc"
  echo ""
fi