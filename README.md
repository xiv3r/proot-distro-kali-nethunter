<p align="center"><img src="https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Fxiv3r%2Fproot-distro-kali-nethunter&count_bg=%2379C83D&title_bg=%23555555&icon=&icon_color=%23E7E7E7&title=%F0%9F%91%81%EF%B8%8F+%F0%9F%91%81%EF%B8%8F&edge_flat=false">

# About
- Kali NetHunter:
Kali NetHunter is the mobile version of Kali Linux, aimed at providing a powerful platform for cybersecurity professionals and ethical hackers. It is specifically tailored to Android devices, with support for a variety of wireless attacks, USB HID attacks, and more. NetHunter is designed to bring the full Kali Linux toolset to mobile, allowing for penetration testing and security auditing on the go.

- Proot-Distro:
proot-distro is a utility that simplifies the installation and management of Linux distributions in a chroot-like environment on Android devices. This tool is especially useful for running full Linux environments without needing root access. It leverages proot, a user-space implementation of chroot, which allows you to run a Linux distribution inside a virtualized environment, completely isolated from the Android system. proot-distro is a great solution for running Kali Linux tools and other Linux-based distributions on Android.

# Termux
>[!Tip]
> - Clear all termux data before installing

## Auto Installer
- bookworm
```sh
termux-setup-storage && apt update && apt upgrade -y && pkg install proot-distro wget -y && wget -O $PREFIX/etc/bash.bashrc https://raw.githubusercontent.com/xiv3r/proot-distro-kali-nethunter/refs/heads/main/src/bash.bashrc && echo "proot-distro login debian" >> $PREFIX/etc/bash.bashrc && proot-distro install debian && proot-distro login debian
```
```sh
wget -qO- https://raw.githubusercontent.com/xiv3r/proot-distro-kali-nethunter/refs/heads/main/kali-proot-distro.sh | sh
```
- Add custom terminal username
> Replace the name `xiv3r` to your name
```sh
sed -i 's/user=kali/user=xiv3r/' /etc/bash.bashrc && source /etc/bash.bashrc
```
## Run Kali (Debain)
- bookworm
```
proot-distro login debian
```
<image src="https://github.com/xiv3r/proot-distro-kali-nethunter/blob/main/src/kali.png">
  
# Dowork (Debian)
- Download [Dowork](https://github.com/PangBaiWork/Dowork/releases/download/stable1.1/app-release-arm64-1.1.apk)
- Install Debian and then proceed to the installer

### Auto Installer
```sh
apt update && apt install wget -y && wget -qO- https://raw.githubusercontent.com/xiv3r/proot-distro-kali-nethunter/refs/heads/main/kali-dowork.sh | sh
```
- Add custom terminal username
> Replace the name `xiv3r` to your name
```sh
sed -i 's/user=kali/user=xiv3r/' /etc/bash.bashrc && source /etc/bash.bashrc
```
<image src="https://github.com/xiv3r/proot-distro-kali-nethunter/blob/main/src/kali.png">

# Termux Colorized Terminal
```sh
wget -O $PREFIX/etc/bash.bashrc https://raw.githubusercontent.com/xiv3r/proot-distro-kali-nethunter/refs/heads/main/termux-color
```
- Add your custom terminal username
> replace the name `termux` to your name
```
sed -i 's/user=xiv3r/user=termux/' $PREFIX/etc/bash.bashrc && source $PREFIX/etc/bash.bashrc
```
<img src="https://github.com/xiv3r/proot-distro-kali-nethunter/blob/main/src/termux-color.png">
