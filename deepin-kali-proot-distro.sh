#!/bin/sh
###
apt update && apt install wget curl gnupg -y
###
wget -O /etc/bash.bashrc https://raw.githubusercontent.com/xiv3r/proot-distro-kali-nethunter/refs/heads/main/bash.bashrc
###
curl -fsSL https://archive.kali.org/archive-key.asc | gpg --dearmor -o /etc/apt/trusted.gpg.d/kali-archive-keyring.gpg
###
echo "
deb https://kali.download/kali kali-rolling main contrib non-free non-free-firmware
" > /etc/apt/sources.list
###
apt update
###
apt full-upgrade -y
###
apt --fix-broken install
###
dpkg --configure -a
