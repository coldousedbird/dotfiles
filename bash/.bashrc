#!/bin/sh

# env vars
export LESSSECURE=1
export LESSHISTFILE=-
export LESSHISTSIZE=0
export TERMINAL="kitty"
export TERMINAL_PROG="kitty"
export BROWSER="chromium"
export EDITOR="nvim"
export PAGER="less -R"
export MANPAGER="nvim +Man! -"
export HISTTIMEFORMAT="%F %T "

# XDG
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

export HISTFILE="$XDG_STATE_HOME"/bash/history
export INPUTRC="$XDG_CONFIG_HOME/bash/inputrc"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
export WINEPREFIX="$XDG_DATA_HOME/wineprefixes/default"
export PYTHON_HISTORY="$XDG_STATE_HOME/python_history"
export DOCKER_CONFIG="$XDG_CONFIG_HOME"/docker
export ANSIBLE_HOME="${XDG_CONFIG_HOME}/ansible"
#export ANSIBLE_CONFIG="${XDG_CONFIG_HOME}/ansible.cfg"
export ANSIBLE_GALAXY_CACHE_DIR="${XDG_CACHE_HOME}/ansible/galaxy_cache"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"

# readline inputrc
set editing-mode vi
set keymap vi-command
set show-all-if-unmodified on
set colored-stats On
set visible-stats On
set mark-symlinked-directories On
set colored-completion-prefix On
set menu-complete-display-prefix On
set echo-control-characters off

# importing configuration files
files=(
  /etc/bashrc                   # system default bashrc
  /etc/bash.bashrc              # system default bashrc
  ~/.config/bash/.bash_aliases  # my bash aliases
  ~/.bash_specific                # file for host specific stuff
)
for file in ${files[@]}; do
  test -f $file && source $file
done

# prompt
export PS0='\[\e[7m\] \[\e[7m\] \[\e[7m\] \t \[\e[7m\] \[\e[7m\] \[\e[7m\] \[\e[0m\]\n'
export PS1='\n\[\e[7m\] \u \[\e[0m\] \[\e[7m\] \w $(git branch --show-current 2>/dev/null)\[\e[0m\] \$ '
PROMPT_COMMAND="echo -ne \"\033]0;$HOSTNAME\007\""

