#!/bin/sh
###
# wget -O /root/.bashrc https://raw.githubusercontent.com/xiv3r/proot-distro-kali-nethunter/refs/heads/main/.bashrc
###
apt update && apt install wget curl gnupg -y
###
# wget -O /etc/apt/trusted.gpg.d/kali-archive-keyring.asc https://archive.kali.org/archive-key.asc
###
curl -fsSL https://archive.kali.org/archive-key.asc | gpg --dearmor -o /etc/apt/trusted.gpg.d/kali-archive-keyring.gpg
###
# cp /etc/apt/trusted.gpg.d/kali-archive-keyring.gpg /usr/share/keyrings/
###
echo "
deb https://kali.download/kali kali-rolling main contrib non-free non-free-firmware
" > /etc/apt/sources.list
###
apt update && apt full-upgrade -y
###
apt --fix-broken install
###
dpkg --configure -a
