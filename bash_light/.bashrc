# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# User specific aliases and functions
export HISTTIMEFORMAT="%F %T "
export LC_ALL=en_US.utf8

alias ll="ls -alh --group-directories-first --color=auto"
alias new="clear;exec bash"
s() {
  sudo cat /etc/bashrc /root/.bashrc ~/.bashrc > ~/.common_rc
  sudo -i bash --rcfile ~/.common_rc
}

