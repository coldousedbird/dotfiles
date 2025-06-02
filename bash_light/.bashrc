# .bashrc
# light version for server usage

# prompt
PS0='\[\e[7m\] \[\e[7m\] \[\e[7m\] \t \[\e[7m\] \[\e[7m\] \[\e[7m\] \[\e[0m\]\n'
PROMPT_COMMAND="echo -ne \"\033]0;$HOSTNAME\007\""
PS1='\n\[\e[7m\] \u \[\e[0m\] \[\e[7m\] \w $(git branch --show-current 2>/dev/null)\[\e[0m\] \$ '

# env vars
export HISTTIMEFORMAT="%F %T "
export LC_ALL=en_US.utf8

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

# remove kitty directory (temp solution)
test $USER != root && test -d kitty && rm -r /home/$USER/kitty

# gathering config files to ~/.common_rc
test -f /etc/bashrc && sudo cat /etc/bashrc > ~/.common_rc && source /etc/bashrc
test -f /root/.bashrc && sudo cat /root/.bashrc > ~/.common_rc && source /root/.bashrc
cat ~/.bashrc >> ~/.common_rc


# aliases
## common
alias l="ls -a --group-directories-first --color=auto"
alias ll="ls -alh --group-directories-first --color=auto"
alias fd="find -iname '*PATTERN*'"

s() {
  sudo -i bash --rcfile ~/.common_rc
  echo $?
}
alias new="clear;exec bash --rcfile ~/.common_rc"
alias n="clear;exec bash --rcfile ~/.common_rc"
alias e="exit"

## docker
test -f "/bin/docker" && (
  alias d="docker"
  dsh() {
    docker exec -it $1 /bin/sh
  }
  alias dl="docker logs"
  alias dlf="docker logs -f --tail=300"
)
test -f "/bin/docker-compose" && (
  alias dc="docker compose"
)

