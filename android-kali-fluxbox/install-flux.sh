
# Variables
Red="\e[0;31m"
Green="\e[0;32m"
Blue="\e[0;34m"
Alert="\e[0;31m[!]"
Success="\e[0;32m[+]"
dim="\e[0;2m"
enc="\e[0;m"

sudo clear 
{
  echo ""
  echo -e "$Success Installing Dependencies"
  echo ""
} && {
  sudo apt update
} && {
  sudo apt install fluxbox tigervnc-standalone-server -y
} && {
  sudo apt remove twm xterm tcl8.6 tightvncserver -y
  sudo apt autoremove -y
} && {
  wget https://raw.githubusercontent.com/harsh7i/Docx/main/android-kali-fluxbox/vncstart >> /dev/null
  wget https://raw.githubusercontent.com/harsh7i/Docx/main/android-kali-fluxbox/vncstop >> /dev/null
} && {
  mv vncst* /usr/bin
  chmod +x /usr/bin/vncst*
} && {
  echo ""
  vncserver -geometry 1280x720 -xstartup /usr/bin/startfluxbox
  echo ""
} && {
  echo -e "$Success Server successfully running at localhost:1 $enc"
  echo ""
}
