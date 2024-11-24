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
# PS1='\[\e[0;32m\]\w\[\e[0m\] \[\e[0;97m\]\$\[\e[0m\] '
user=termux
PS1="\[\033[01;31m\]root@$user\[\033[00;33m\]™\[\033[00;36m\] "

# Handles nonexistent commands.
# If user has entered command which invokes non-available
# utility, command-not-found will give a package suggestions.
if [ -x /data/data/com.termux/files/usr/libexec/termux/command-not-found ]; then
        command_not_found_handle() {
                /data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
        }
fi
#
clear
#
echo -e "\e[1;32m"
echo "_________ _______  _______  _______                   ";
echo "\__   __/(  ____ \(  ____ )(       )|\     /||\     /|";
echo "   ) (   | (    \/| (    )|| () () || )   ( |( \   / )";
echo "   | |   | (__    | (____)|| || || || |   | | \ (_) / ";
echo "   | |   |  __)   |     __)| |(_)| || |   | |  ) _ (  ";
echo "   | |   | (      | (\ (   | |   | || |   | | / ( ) \ ";
echo "   | |   | (____/\| ) \ \__| )   ( || (___) |( /   \ )";
echo "   )_(   (_______/|/   \__/|/     \|(_______)|/     \|";
echo
echo -e "\e[0m"
