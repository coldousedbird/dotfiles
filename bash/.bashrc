#!/bin/sh

# prompt
export PS0='\[\e[7m\] \[\e[7m\] \[\e[7m\] \t \[\e[7m\] \[\e[7m\] \[\e[7m\] \[\e[0m\]\n'
export PS1='\n\[\e[7m\] \u \[\e[0m\] \[\e[7m\] \w $(git branch --show-current 2>/dev/null)\[\e[0m\] \$ '

export LESSSECURE=1
export EDITOR="nvim"
export PAGER="less -R"
export MANPAGER="nvim +Man! -"

# importing configuration files
files=(
	/etc/bashrc                   # system default bashrc
	~/.config/bash/.bash_aliases  # my bash aliases
	.bash_specific                # file for host specific stuff
)
for file in ${files[@]}; do
  test -f $file && source $file
done


