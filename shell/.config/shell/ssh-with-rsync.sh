host=$1
test -z $host && return 0
echo $host
rsync --timeout 2 ~/dotfiles/bash_server/.* $host:~/ 2> /dev/null || printf "rsync error. try fscp.\n"
ssh $host
