cd
# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, overwrite the one in /etc/profile)
# but only if not SUDOing and have SUDO_PS1 set; then assume smart user.
user=kali
if ! [ -n "${SUDO_USER}" -a -n "${SUDO_PS1}" ]; then
  PS1='${debian_chroot:+($debian_chroot)}\u@$user:\w\$ '
fi

# enable bash completion in interactive shells
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
   . /usr/share/bash-completion/bash_completion
elif [ -f /etc/bash_completion ]; then
   . /etc/bash_completion
  fi
fi

# if the command-not-found package is installed, use it
if [ -x /usr/lib/command-not-found -o -x /usr/share/command-not-found/command-not-found ]; then
        function command_not_found_handle {
                # check because c-n-f could've been removed in the meantime
                if [ -x /usr/lib/command-not-found ]; then
                   /usr/lib/command-not-found -- "$1"
                   return $?
                elif [ -x /usr/share/command-not-found/command-not-found ]; then
                   /usr/share/command-not-found/command-not-found -- "$1"
                   return $?
                else
                   printf "%s: command not found\n" "$1" >&2
                   return 127
                fi
        }
fi
#
clear
#
echo -e '\e[1;31m'
echo ' _____                                                       _____ ';
echo '( ___ )-----------------------------------------------------( ___ )';
echo ' |   |                                                       |   | ';
echo ' |   |                                                       |   | ';
echo ' |   |       ___  __     ________   ___        ___           |   | ';
echo ' |   |      |\  \|\  \  |\   __  \ |\  \      |\  \          |   | ';
echo ' |   |      \ \  \/  /|_\ \  \|\  \\ \  \     \ \  \         |   | ';
echo ' |   |       \ \   ___  \\ \   __  \\ \  \     \ \  \        |   | ';
echo ' |   |        \ \  \\ \  \\ \  \ \  \\ \  \____ \ \  \       |   | ';
echo ' |   |         \ \__\\ \__\\ \__\ \__\\ \_______\\ \__\      |   | ';
echo ' |   |          \|__| \|__| \|__|\|__| \|_______| \|__|      |   | ';
echo ' |   |                                                       |   | ';
echo ' |___|                         NetHunter                     |___| ';
echo '(_____)-----------------------------------------------------(_____)';
echo
echo
