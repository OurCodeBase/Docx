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

echo -e "$dim" && echo -e "$Success Installing Requirements $dim" && echo -e "$dim" && sudo apt update && echo -e "$dim" && echo -e "$Red   apt is running...$dim" && echo -e "$dim" && sudo apt install tigervnc-standalone-server -y && echo -e "$dim" && echo -e "$Red  installing vncserver...$dim" && echo -e "$dim" && sudo apt install tigervnc-standalone-server -y && echo -e "$dim" && echo -e "$Red  installing fluxbox...$dim" && echo -e "$dim" && sudo apt install fluxbox -y && sudo apt remove twm tightvncserver -y && sudo apt autoremove -y && echo -e "$enc $dim" && curl -OL https://raw.githubusercontent.com/harsh7i/Docx/main/android-kali-fluxbox/vncstart && curl -OL https://raw.githubusercontent.com/harsh7i/Docx/main/android-kali-fluxbox/vncstop && mv vncst* /usr/bin && chmod +x /usr/bin/vncstart && chmod +x /usr/bin/vncstop &&  echo "" && echo -e "$Success Successfully setup completed $enc" && echo "" && vncstart