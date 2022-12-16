#!/bin/bash
#variables
Success="\e[0;32m[+]"
enc="\e[0;m"

echo ""
echo -e "${Success} Installing zsh-syntax-highlighting ${enc}"
echo ""
{
  apt install git -y
} && {
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.zsh-syntax-highlighting" --depth 1
} && {
  echo "source $HOME/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> "$HOME/.zshrc"
} && {
  echo
  echo -e "${Success} Successfully Installed${enc}"
  echo
  echo -e "${Success} Please restart your userland session.${enc}"
  echo
}