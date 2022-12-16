#!/bin/bash
# variables
Success="\e[0;32m[+]"
enc="\e[0;m"
echo ""
echo -e "${Success} Installing zsh ${enc}"
echo ""
{
  sudo apt update -y && sudo apt install zsh -y
} && {
  echo "su" >> ~/.bashrc
  echo "zsh" >> /root/.bashrc
} && {
  echo ""
  echo -e "${Success} Please restart your userland session.${enc}"
  echo ""
}