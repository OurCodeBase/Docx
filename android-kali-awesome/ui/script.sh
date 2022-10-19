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
wget https://github.com/harsh7i/Docx/blob/main/android-kali-awesome/ui/assets/icons.tar.gz?raw=true
wget https://raw.githubusercontent.com/harsh7i/Docx/main/android-kali-awesome/ui/assets/rc.lua

echo ""

{
  if [[ -f "~/.config/awesome/rc.lua" ]]; then
    #statements
    echo -e "${Success} File already exists.${enc}"
    echo ""
  else
    #statements
    mkdir ~/.config > /dev/null 2>&1 && mkdir ~/.config/awesome > /dev/null 2>&1
    cp rc.lua ~/.config/awesome/
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
  rm ~/theme/submenu.png
  tar -xvf icons.tar.gz && rm icons.tar.gz > /dev/null 2>&1
  mv submenu.png ~/theme
  rm ~/theme/titlebar/close*
  rm ~/theme/titlebar/maxim*
  rm ~/theme/titlebar/minim*
  mv *.png ~/theme/titlebar/
  echo ""
  echo "${Success} Configuration Successfully Done...${enc}"
}