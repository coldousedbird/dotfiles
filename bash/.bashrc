#!/bin/sh

# # readline inputrc
# set editing-mode vi
# set keymap vi-command
# set show-all-if-unmodified on
# set colored-stats On
# set visible-stats On
# set mark-symlinked-directories On
# set colored-completion-prefix On
# set menu-complete-display-prefix On
# set echo-control-characters off

# importing configuration files
files=(
  /etc/bashrc                  # system default bashrc
  /etc/bash.bashrc             # system default bashrc
  ~/.config/shell/environment  # shell environment
  ~/.config/shell/aliases      # shell aliases
  ~/.config/shell/inputrc      # inputrc config
  ~/.specific                  # file for host specific stuff
)
for file in ${files[@]}; do
  test -f $file && source $file
done

# prompt
export PS0='\[\e[7m\] \[\e[7m\] \[\e[7m\] \t \[\e[7m\] \[\e[7m\] \[\e[7m\] \[\e[0m\]\n'
export PS1='\n\[\e[7m\] \u \[\e[0m\] \[\e[7m\] \w $(git branch --show-current 2>/dev/null)\[\e[0m\] \$ '
PROMPT_COMMAND="echo -ne \"\033]0;$HOSTNAME\007\""

