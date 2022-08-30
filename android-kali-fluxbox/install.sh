#!/bin/sh

# $Red
# $Green

# Variables
Red = "\e[0;31m"
Green = "\e[0;32m"
Blue = "\e[0;34m"
Alert = "\e[0;31m[!]"
Success = "\e[0;32m[+]"
dim = "\e[0;2m"
enc = "\e[0;m"

echo -e "$Success Installing Requirements $enc" && echo -e "$dim" && sudo apt update && echo -e "$Red   apt is running...$dim" && sudo apt install tigervnc-standalone-server -y && echo -e "$Red  installing vncserver...$dim" && sudo apt install tigervnc-standalone-server -y && echo -e "$Red  installing fluxbox...$dim" && sudo apt install fluxbox -y && echo -e "$enc" && curl -OL https://raw.githubusercontent.com/harsh7i/Docx/main/android-kali-fluxbox/vncstart && curl -OL https://raw.githubusercontent.com/harsh7i/Docx/main/android-kali-fluxbox/vncstop && mv vncst* /usr/bin && chmod +x /usr/bin/vncstart && chmod +x /usr/bin/vncstop && echo -e "$Success Successfully setup completed"