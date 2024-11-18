# About
- Kali NetHunter:
Kali NetHunter is the mobile version of Kali Linux, aimed at providing a powerful platform for cybersecurity professionals and ethical hackers. It is specifically tailored to Android devices, with support for a variety of wireless attacks, USB HID attacks, and more. NetHunter is designed to bring the full Kali Linux toolset to mobile, allowing for penetration testing and security auditing on the go.

- Proot-Distro:
proot-distro is a utility that simplifies the installation and management of Linux distributions in a chroot-like environment on Android devices. This tool is especially useful for running full Linux environments without needing root access. It leverages proot, a user-space implementation of chroot, which allows you to run a Linux distribution inside a virtualized environment, completely isolated from the Android system. proot-distro is a great solution for running Kali Linux tools and other Linux-based distributions on Android.

# Platform
- Termux

# Auto Installer
```sh
termux-setup-storage && apt update && apt upgrade -y && pkg install proot-distro wget -y && echo "proot-distro login debian" >> $PREFIX/etc/bash.bashrc && proot-distro install debian && proot-distro login debian && wget -qO- https://raw.githubusercontent.com/xiv3r/proot-distro-kali-nethunter/refs/heads/main/kali-proot-distro.sh | sh
```
