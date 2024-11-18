# About
- 

# Platform
- Termux
- Arch=`arm64v8a`

# Auto Install
```sh
termux-setup-storage && apt update && apt upgrade -y && pkg install proot-distro wget -y && echo "proot-distro login debian" >> $PREFIX/etc/bash.bashrc && proot-distro install debian && proot-distro login debian
```
