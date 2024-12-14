# dotfiles/fedora/.bashrc

# environment variables
EDITOR=nvim
PS0='\[\e[7m\] \[\e[7m\] \[\e[7m\] \t \[\e[7m\] \[\e[7m\] \[\e[7m\] \[\e[0m\]\n'
PROMPT_COMMAND='PS1_CMD1=$(git branch --show-current 2>/dev/null)'
PS1='\n\[\e[7m\] \u \[\e[0m\] \[\e[7m\] \w ${PS1_CMD1}\[\e[0m\] \$ '

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
