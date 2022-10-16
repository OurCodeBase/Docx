#!/bin/bash

# Variables
Red="\e[0;31m"
Green="\e[0;32m"
Blue="\e[0;34m"
Alert="\e[0;31m[×]"
Success="\e[0;32m[+]"
dim="\e[0;2m"
enc="\e[0;m"

clear
echo ""
echo -e "${Success} Installing Dependencies...${enc}"
echo ""
sudo apt install compton nitrogen -y
wget https://raw.githubusercontent.com/harsh7i/Docx/main/android-kali-awesome/ui/menubar.lua
wget https://raw.githubusercontent.com/harsh7i/Docx/main/android-kali-awesome/ui/menubar_prev.lua
echo ""
{
  if [[ -f "~/.config/awesome/rc.lua" ]]; then
    #statements
    echo -e "${Success} File already exists.${enc}"
    echo ""
  else
    #statements
    mkdir ~/.config &> /dev/null && mkdir ~/.config/awesome &> /dev/null
    cp /etc/xdg/awesome/rc.lua ~/.config/awesome/
    echo -e "${Success} File created successfully.${enc}"
  fi
} && {
  echo ""
} && {
  if [[ -d "~/theme" ]]; then
    #statements
    echo -e "${Success} Theme dirs already exists.${enc}"
    echo ""
  else
    mkdir ~/theme && ln -s /usr/share/awesome/themes/default/* ~/theme/
    echo -e "${Success} Theme dirs successfully created.${enc}"
    echo ""
  fi
} && {
  echo -e "${Success} Configuration Started...${enc}"
  echo ""
  menu_adv=`cat menubar.lua`
  menu_prev=`cat menubar_prev.lua`
  sed -i 's/${menu_prev}/${menu_adv}/g' ~/.config/awesome/rc.lua
  echo -e "\nawful.spawn.with_shell(compton)" >> ~/.config/awesome/rc.lua
  echo -e "\nawful.spawn.with_shell(nitrogen --restore)" >> ~/.config/awesome/rc.lua
}