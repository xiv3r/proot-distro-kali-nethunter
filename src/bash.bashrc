# Command history tweaks:
# - Append history instead of overwriting
#   when shell exits.
# - When using history substitution, do not
#   exec command immediately.
# - Do not save to history commands starting
#   with space.
# - Do not save duplicated commands.
shopt -s histappend
shopt -s histverify
export HISTCONTROL=ignoreboth

# Default command line prompt.
PROMPT_DIRTRIM=2
user=termux
PS1="\[\033[1;91m\]\342\224\214\342\224\200\$([[ \$? != 0 ]] && echo \"[\[\033[1;97m\]\342\234\227\[\033[1;91m\]]\342\224\200\")[$(if [[ ${EUID} == 0 ]]; then echo '\[\033[1;91m\]root\[\033[1;93m\]💀\[\033[1;92m\]$user'; else echo '\[\033[1;99m\]root\[\033[1;93m\]@\[\033[1;92m\]$user'; fi)\[\033[1;91m\]]\342\224\200[\[\033[1;95m\]\w\[\033[1;91m\]]\n\[\033[1;91m\]\342\224\224\342\224\200\342\224\200\342\225\274 \[\033[0m\]\[\e[1;93m\]\\$\[\e[0m\] \[\033[1;96m\]"
# Handles nonexistent commands.
# If user has entered command which invokes non-available
# utility, command-not-found will give a package suggestions.
if [ -x /data/data/com.termux/files/usr/libexec/termux/command-not-found ]; then
        command_not_found_handle() {
                /data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
        }
fi

echo -e '\e[1;96m'
echo "
       ████████╗███████╗██████╗ ███╗   ███╗██╗   ██╗██╗  ██╗
       ╚══██╔══╝██╔════╝██╔══██╗████╗ ████║██║   ██║╚██╗██╔╝
          ██║   █████╗  ██████╔╝██╔████╔██║██║   ██║ ╚███╔╝
          ██║   ██╔══╝  ██╔══██╗██║╚██╔╝██║██║   ██║ ██╔██╗
          ██║   ███████╗██║  ██║██║ ╚═╝ ██║╚██████╔╝██╔╝ ██╗
          ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═╝
"

echo -e '\e[0m'
