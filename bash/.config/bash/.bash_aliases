# dotfiles/bash/.bash_aliases

# terminal stuff
alias new="clear && exec bash"
alias keys="bind -p | grep -v '^#\|self-insert\|^$'"
alias ya="yazi"
alias c="cmatrix -sC yellow -u 3"
alias ff="fastfetch -s Title:Separator:OS:Host:Kernel:Uptime:Bluetooth:Packages:Processes:Display:DE:WM:Terminal:Shell:Editor:Theme:Font:CPU:GPU:Memory:Swap:Disk:Battery:Separator:Colors"
alias bat="bat --theme='Monokai Extended Bright'"
alias icat="kitty icat"
# language translation
alias ru="trans -t russian -v -j"     # translate english to russian
alias en="trans -t english -v -j"     # translate russian to english
# specific
alias rustlings="cd ~/Programming/rustlings && /home/coldousedbird/.cargo/bin/rustlings"
alias llm_setup="~/Programming/GPT/llm_setup.sh"
alias llm="~/Programming/GPT/Llama-3.2-1B-Instruct.Q6_K.llamafile"
alias doom="cd ~/Games/terminal-doom && zig-out/bin/terminal-doom"
# network
alias ports="ss -tunlp"
alias check_tcp="nc -zvn"
# fzf
eval "$(fzf --bash 2> /dev/null)"
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix --hidden --follow --exclude .git'
# export FZF_DEFAULT_COMMAND='rg --ignore --hidden --ignore --files --follow'
fcd() {
  cd ${1:-.}
  FIND_DIRECTORY=$(fd --no-require-git -iHL --type directory | \fzf)
  cd ${FIND_DIRECTORY:--}
}
alias fzfi="fzf --preview='bat --color=always {}'"

# list file system related stuff
alias ls="ls -a --color=auto --group-directories-first"
alias l='eza -a --group-directories-first'
alias ll='eza -alh --group-directories-first --git-repos'
alias lt='eza -alhTL=2 --group-directories-first --git-repos --git-ignore'
alias llt='eza -alhT --group-directories-first --git-repos --git-ignore'
alias lsblk="lsblk -o NAME,TYPE,FSTYPE,FSVER,LABEL,SIZE,FSUSE%,FSUSED,FSAVAIL,MOUNTPOINTS"
alias sizes="sudo du --max-depth=1 -hL"
alias grep="grep --color=auto"

# edit file structure
alias mv='mv -v'
alias mkd='mkdir -vp'
alias rm="echo you probably need to use rem"
alias rem="trash-put"
format() {    # snake-case formatting filenames
  mv -vT "$1" $(echo $1 | tr '[:upper:]' '[:lower:]' | tr ' ' '_')
}     # e.g. "sOmEtHING VEry Interesting" -> "something_very_interesting"
## lf integration
lfcd() {
    # `command` is needed in case `lfcd` is aliased to `lf`
    cd "$(command lf -print-last-dir "$@")"
}
alias lf="lfcd"

# view and edit files
## text
alias vi="$EDITOR"
fvi() {
  FILE=$(fzf --preview='bat --color=always {}')
  if [ -n "$FILE" ]; then
    echo $FILE
    $EDITOR $FILE
  fi
}
alias conf="cd ~/dotfiles && $EDITOR"
alias note="cd ~/Notes && $EDITOR"

## audio
alias tags="id3v2"

## archives
compress() {
  tar -cz $1 -f $1.tar.gz
}
decompress() {
  dest_name=$(basename $1)
  dest_path=$(dirname $1)/${dest_name:0:-7}
  if [ ! -d "$dest_path" ]; then
    mkdir -v $dest_path
  fi
  tar -xzf $1 -C $dest_path
}


# git & github
alias g="git"
alias gs="git status"
alias gl="git log"
alias gltr="git log --graph --decorate --oneline --color | less -R"
## fuzzyfind changed files
alias gfch="git status --porcelain | fzf | awk '{print \$NF}'"
gd() { # diff only in less
  git diff --color $1 | less -R
}
alias gds="git diff --color --staged | less -R"
gfd() { # fuzzy find changed file and show it's diff
  gd $(gfch)
}
gsw() { # fuzzy switch branch
  branch=$(git branch | fzf | cut -c 3- | awk "{print \$1}")
  echo $branch
  gsw $branch
}
alias ga="git add"
gfa() {
  ga $(gfch)
}
alias gc="git commit"
alias gpu="git push"
alias gpl="git pull"

alias gh_log="gh auth login"
alias gh_auth="gh auth setup-git"


# docker aliases/functions
alias d="docker"
alias dimg="docker images"
alias dnet="docker network"
alias dcom="docker compose"
drem () {
  d kill $1 ; d rm $1 ; d rmi $1  
}
drun () {
  d run -d -p 80:80 --name=$1 $1
}
dremake () {
  drem $1 ; \
  d build . -t $1 && \
  drun $1
}
dsh () {
  d exec -it $1 /bin/sh
}


# ssh
ssh-check-agent() {
  # check if ssh-agent exist, and if not - create it and save it's stdout (with environment variables) to file
  ! pgrep -u "$USER" ssh-agent > /dev/null && ssh-agent > ~/.ssh/agent_env
  # source environment variables from file
  source ~/.ssh/agent_env > /dev/null
  # check if key added to agent and add if not
  ! ssh-add -l > /dev/null && ssh-add
}

alias kssh="ssh-check-agent ; kitten ssh"



fhost() {
  grep '^Host ' ~/.ssh/config | awk '{print $2}' | fzf 
}
fssh() {
  cd ${1:-.}
  host=$(fhost)
  echo $host
  ssh-check-agent
  kssh $host
}



# package managers
UP="printf \"UPGRADING AND CLEARING SYSTEM\n\" ; sudo sh -c ':"
if [ -e /bin/dnf ]; then
  alias dnf_search="dnf search"
  alias dnf_list="dnf list"
  alias dnf_install="sudo dnf install"
  alias dnf_remove="sudo dnf remove"
  UPGRADE="dnf upgrade --refresh --best --allowerasing -y"
  CLEAR="dnf autoremove ; dnf clean all"
  alias dnf_upgrade="sudo $UPGRADE"
  alias dnf_clear="sudo $CLEAR"
  UP="$UP ; printf \"\n\ndnf upgrade\n\" ; $UPGRADE ; printf \"\n\ndnf clear\n\" ; $CLEAR" 
fi
if [ -e /bin/flatpak ]; then
  alias flat_search="flatpak search"
  alias flat_list="flatpak list"
  alias flat_install="flatpak install --noninteractive -y"
  alias flat_remove="flatpak remove --noninteractive -y"
  UPGRADE="flatpak upgrade --noninteractive -y"
  CLEAR="flatpak uninstall --unused ; flatpak repair"
  alias flat_upgrade=$UPGRADE
  alias flat_clear=$CLEAR
  UP="$UP ; printf \"\n\nflatpak upgrade\n\" ; $UPGRADE ; printf \"\n\nflatpak clear\n\" ; $CLEAR "
fi
if [ "$HOSTNAME" = "archlinux" ]; then
  # package manager aliases
  alias pacman_remove="sudo pacman -Rs"
  alias pacman_clear="sudo pacman -Qdtq | pacman -Rs -"
  alias pacman_find="pacman -Ss"
  alias pacman_find_installed="pacman -Qs"
  alias pacman_update="sudo pacman -Syu"
fi
if [ -e /bin/apt ]; then
  # package manager aliases
  alias apt_search="apt search"
  alias apt_list="apt list"
  alias apt_install="sudo apt install"
  alias apt_remove="sudo apt autoremove"
  UPGRADE="apt update && apt upgrade"
  CLEAR="apt autoclean"
  alias apt_upgrade=$UPGRADE
  alias apt_clear=$CLEAR
  UP="$UP ; printf \"\n\napt upgrade\n\" ; $UPGRADE ; printf \"\n\napt clear\n\" ; $CLEAR "
fi

UP="$UP\'"
# alias up="sudo sh -c 'printf \"\n\ndnf upgrade\n\" && dnf upgrade --refresh --best --allowerasing -y && printf \"\n\nflatpak upgrade\n\" && flatpak update -y'"
alias up=$UP

