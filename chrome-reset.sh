#!/bin/bash
cd ~/Downloads
#===========================PASSWORDS=====================================
echo -e "\x1b[41;37mATTENTION! PRESS [ENTER] KEY TO OPEN CHROME AND MANUALLY BACKUP YOUR PASSWORDS AND BOOKMARKS.\x1b[K\x1b[0m"
echo -e "\x1b[41;37mchromium chrome://password-manager/settings\x1b[K\x1b[0m"
echo -e "\x1b[41;37mchromium chrome://bookmarks\x1b[K\x1b[0m"
read -p ""
google-chrome
#============================================================================
echo -e "\x1b[41;37mATTENTION! YOU ARE ABOUT TO LOSE ALL YOUR CHROME DATA(PASSWORD, BOOKMARKS,ETC.) - PRESS [ENTER] KEY TO PROCEED.\x1b[K\x1b[0m"
read -p ""
sudo pkill --oldest chrome -f
sudo rm -r /opt/google/chrome -f
sudo apt remove google-chrome-stable -f -y
sudo apt purge google-chrome-stable -f -y
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
google-chrome
exit
