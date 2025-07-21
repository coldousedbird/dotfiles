# light bashrc for server usage
# sourcing default config
test $USER == root && test -f /root/bashrc && source /root/bashrc
test -f /etc/bashrc && source /etc/bashrc
test -f /etc/bash.bashrc && source /etc/bash.bashrc

# prompt
PS0='\[\e[7m\] \[\e[7m\] \[\e[7m\] \t \[\e[7m\] \[\e[7m\] \[\e[7m\] \[\e[0m\]\n'
PS1='\n\[\e[7m\] \u \[\e[0m\] \[\e[7m\] \w \[\e[0m\] \$ '
PROMPT_COMMAND='echo -ne "\033]0;$HOSTNAME\007"'

# env vars
export HISTTIMEFORMAT="%F %T "
export LC_ALL=en_US.utf8
export TERM=xterm
export PATH=$PATH:$HOME/.local/bin:$HOME/bin
# terminal var
test -n $(find "/usr/share/terminfo" -type f | grep "xterm-256color" | head -n 1) && export TERM="xterm-256color"

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

# aliases
## common
alias l="ls -aH --group-directories-first --color=auto"
alias ll="ls -alHh --group-directories-first --color=auto"
alias fd="find -iname '*PATTERN*'"
alias rm='rm -iv'
alias cp='cp -iv'
alias mv='mv -iv'
alias mkd='mkdir -vp'
alias sudo='sudo '

test $USER != root && \
alias s="sudo -i bash --rcfile ~/.bashrc"
alias n="clear;exec bash"
alias e="exit"

## docker
docker --version >& /dev/null && {
  alias d="docker"
  alias di="docker images"
  alias dn="docker network"
  #alias dps="docker ps --format 'container:\t{{.ID}}, {{.Names}}, {{.Image}}\nlifetime:\t{{.RunningFor}}, {{.Status}}\nports:\t{{.Ports}}\n' | column -tL -s $'\t'"
  alias dps="d ps --format 'table {{.Names}}\t{{.RunningFor}}\t{{.Status}}\t{{.Image}}\n{{.Ports}}\n--------'"
  alias dex="docker exec -it"
  dsh() {
    docker exec -it $1 /bin/sh
  }
  alias dl="docker logs"
  alias dlf="docker logs -f"
  alias dllf="docker logs -f --tail 300"
}
docker-compose --version >& /dev/null && {
  alias dc="docker-compose"
}
docker compose version >& /dev/null && {
  alias dc="docker compose"
}

