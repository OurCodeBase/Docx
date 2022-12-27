#!/bin/bash

# Variables
Alert="\e[0;31m[×]"
Success="\e[0;32m[+]"
enc="\e[0;m"

zsh_syntax_on(){
  echo "source $HOME/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> "$HOME/.zshrc"
}

zsh_success(){
  echo
  echo -e "${Success} Please restart your userland session.${enc}"
  echo
}

echo
echo -e "${Success} Installing Oh-My-Zsh${enc}"
echo
{
  apt install git -y
} && {
  git clone https://github.com/ohmyzsh/ohmyzsh.git "$HOME/.oh-my-zsh" --depth 1
} && {
  if [[ -f "$HOME/.zshrc" ]]; then
    #statements
    mv "$HOME/.zshrc" "$HOME/.zshrc.bak.$(date +%Y.%m.%d-%H:%M:%S)"
  fi
  cp "$HOME/.oh-my-zsh/templates/zshrc.zsh-template" "$HOME/.zshrc"
} && {
  echo
  while true; do
    read -p "Are you currently using zsh-syntax-highlighting ?" yn
    case $yn in
        [Yy]* ) zsh_syntax_on; break;;
        [Nn]* ) zsh_success; ;;
        * ) echo "Please answer yes or no.";;
    esac
  done
}