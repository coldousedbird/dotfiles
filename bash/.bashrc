# dotfiles/bash/.bashrc

# environment variables
EDITOR=nvim
PAGER=less
LESSSECURE=1
PS0='\[\e[7m\] \[\e[7m\] \[\e[7m\] \t \[\e[7m\] \[\e[7m\] \[\e[7m\] \[\e[0m\]\n'
# PS0='   \t   \n'
PROMPT_COMMAND='PS1_CMD1=$(git branch --show-current 2>/dev/null)'
PS1='\n\[\e[7m\] \u \[\e[0m\] \[\e[7m\] \w ${PS1_CMD1}\[\e[0m\] \$ '
ANSIBLE_INVENTORY='~/axi/Ansible-inventory/inventory'
# for kitty to work in ubuntu wsl
# export DISPLAY=$(awk '/nameserver / {print $2; exit}' /etc/resolv.conf 2>/dev/null):0
export LIBGL_ALWAYS_INDIRECT=0

# source global definitions
if [ -f /etc/bashrc ]; then
. /etc/bashrc
fi

# user aliases
if [ -f .bash_aliases ]; then
. .bash_aliases
fi

# greetings!
ff
