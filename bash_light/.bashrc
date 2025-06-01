# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi
PS0='\[\e[7m\] \[\e[7m\] \[\e[7m\] \t \[\e[7m\] \[\e[7m\] \[\e[7m\] \[\e[0m\]\n'
PROMPT_COMMAND="echo -ne \"\033]0;$HOSTNAME\007\""
PS1='\n\[\e[7m\] \u \[\e[0m\] \[\e[7m\] \w $(git branch --show-current 2>/dev/null)\[\e[0m\] \$ '
#
# User specific aliases and functions
export HISTTIMEFORMAT="%F %T "
export LC_ALL=en_US.utf8

test $USER != root && test -d kitty && rm -r /home/$USER/kitty

alias ll="ls -alh --group-directories-first --color=auto"
alias new="clear;exec bash"
s() {
  sudo cat /etc/bashrc /root/.bashrc ~/.bashrc > ~/.common_rc
  sudo -i bash --rcfile ~/.common_rc
}

