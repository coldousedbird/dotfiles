#!/usr/bin/env zsh
# activate ssh agent
source ~/.config/shell/ssh-check-agent.sh

host=$1
test -z $host && return 0
echo $host
rsync --timeout 2 ~/.files/server/.vimrc ~/.files/server/.bashrc $host:~/ 2> /dev/null || printf "rsync error. try fscp.\n"
ssh $host
