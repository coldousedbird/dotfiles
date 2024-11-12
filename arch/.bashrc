# dotfiles/arch/.bashrc

# environment variables
EDITOR=nvim
PS1='[\u@\h \W]\$ '

# source global definitions
if [ -f /etc/bashrc ]; then
. /etc/bashrc
fi

# user aliases
if [ -f .bash_aliases ]; then
. .bash_aliases
fi

# greetings
ff
