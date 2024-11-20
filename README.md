# About
- Kali NetHunter:
Kali NetHunter is the mobile version of Kali Linux, aimed at providing a powerful platform for cybersecurity professionals and ethical hackers. It is specifically tailored to Android devices, with support for a variety of wireless attacks, USB HID attacks, and more. NetHunter is designed to bring the full Kali Linux toolset to mobile, allowing for penetration testing and security auditing on the go.

- Proot-Distro:
proot-distro is a utility that simplifies the installation and management of Linux distributions in a chroot-like environment on Android devices. This tool is especially useful for running full Linux environments without needing root access. It leverages proot, a user-space implementation of chroot, which allows you to run a Linux distribution inside a virtualized environment, completely isolated from the Android system. proot-distro is a great solution for running Kali Linux tools and other Linux-based distributions on Android.

# Termux

### Auto Installer (Debian)
>[!Tip]
> - Clear all termux data before installing
> - Automatically launch Kali on start-up
```sh
termux-setup-storage && apt update && pkg install proot-distro wget -y && echo "proot-distro login debian" >> $PREFIX/etc/bash.bashrc && proot-distro install debian && proot-distro login debian
```
```sh
wget -qO- https://raw.githubusercontent.com/xiv3r/proot-distro-kali-nethunter/refs/heads/main/kali-proot-distro.sh | sh
```
### Auto Installer (Ubuntu)
```sh
termux-setup-storage && apt update && pkg install proot-distro wget -y && echo "proot-distro login debian" >> $PREFIX/etc/bash.bashrc && proot-distro install ubuntu && proot-distro login ubuntu
```
```sh
wget -qO- https://raw.githubusercontent.com/xiv3r/proot-distro-kali-nethunter/refs/heads/main/kali-proot-distro.sh | sh
```

### Manual Install (Debian)
- Selective launch only
```sh
apt update && pkg install proot-distro wget -y && proot-distro install debian && proot-distro login debian
```
```sh
wget -qO- https://raw.githubusercontent.com/xiv3r/proot-distro-kali-nethunter/refs/heads/main/kali-proot-distro.sh | sh
```
### Manual Install (Ubuntu)
```sh
apt update && pkg install proot-distro wget -y && proot-distro install ubuntu && proot-distro login ubuntu
```
```sh
wget -qO- https://raw.githubusercontent.com/xiv3r/proot-distro-kali-nethunter/refs/heads/main/kali-proot-distro.sh | sh
```

- Run Kali (Debain)
```
proot-distro login debian
```
- Run Kali (Ubuntu)
```sh
proot-distro login ubuntu
```
- Add custom terminal username
> Replace the name `xiv3r` to your name
```sh
sed -i 's/user=kali/user=xiv3r/' $PREFIX/etc/bash.bashrc
```

<image src="https://github.com/xiv3r/proot-distro-kali-nethunter/blob/main/src/termux.png">


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
sed -i 's/user=kali/user=xiv3r/' /etc/bash.bashrc
```

<image src="https://github.com/xiv3r/proot-distro-kali-nethunter/blob/main/src/dowork.png">
