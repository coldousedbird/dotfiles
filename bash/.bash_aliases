# dotfiles/bash/.bash_aliases


# default
alias new="clear && cd && exec bash"
alias ls="ls -a --color=auto --group-directories-first"
alias l='eza -a --group-directories-first'
alias ll='eza -alh --group-directories-first --git-repos'
alias lt='eza -alhTL=2 --group-directories-first --git-repos --git-ignore'
alias llt='eza -alhTL=5 --group-directories-first --git-repos --git-ignore'
alias mv='mv -v'
format() {    # snake-case formatting filenames
  mv -vT "$1" $(echo $1 | tr '[:upper:]' '[:lower:]' | tr ' ' '_')
}     # e.g. "sOmEtHING VEry Interesting" -> "something_very_interesting"

alias mkd='mkdir -vp'
alias sizes="sudo du --max-depth=1 -hL"
alias conf="cd ~/dotfiles && $EDITOR"
alias vimkeys="bind -p | grep -v '^#\|self-insert\|^$'"
alias note="cd ~/Notes && $EDITOR"
alias ya="yazi"
alias c="cmatrix -sC yellow -u 3"
alias ff="fastfetch -s Title:Separator:OS:Host:Kernel:Uptime:Bluetooth:Packages:Processes:Display:DE:WM:Terminal:Shell:Editor:Theme:Font:CPU:GPU:Memory:Swap:Disk:Battery:Separator:Colors"
alias g="git"
alias g_log="gh login"
alias g_auth="gh auth setup-git"
# docker aliases/functions
alias d="docker"
alias dim="docker images"
alias dc="docker compose"
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

alias icat="kitty icat"
kssh () {
  if ! pgrep -u "$USER" ssh-agent > /dev/null; then \
    printf "setting up ssh" ; \
    eval $(ssh-agent) > /dev/null 2>&1 && \
    ssh-add -l > /dev/null || ssh-add ~/.ssh/id_ecdsa > /dev/null
  fi
  kitten ssh $*
}

#alias ssh_setup="eval $(ssh-agent) > /dev/null && ssh-add -l > /dev/null || ssh-add ~/.ssh/id_ecdsa"

alias rm="echo you probably need to use rem"
alias rem="trash-put"
# network
alias ports="ss -tunlp"
alias check_tcp="nc -zvn"

# language translation
alias ru="trans -t russian -v -j"
alias en="trans -t english -v -j"
# id3 tags editor
alias tags="id3v2"
alias lsblk="lsblk -fo +size"
# compression
alias compress="tar -czvf"
alias decompress="tar -xvzf"

if [ "$HOSTNAME" = "fedora" ]; then
  # package managers aliases
  alias dnfinst="sudo dnf install"
  alias dnfrem="sudo dnf remove"
  alias dnfind="dnf search"
  alias dnfup="sudo dnf update"
  alias flatinst="flatpak install --noninteractive -y flathub"
  alias flatrem="flatpak remove --noninteractive -y"
  alias flatfind="flatpak search"
  alias up="sudo sh -c 'printf \"dnf upgrade\n\" && dnf upgrade --refresh --best --allowerasing -y && printf \"\n\nflatpak upgrade\n\" && flatpak update -y'"
  # other specific stuff
  alias heroic="flatpak run com.heroicgameslauncher.hgl"
  alias connect_arch='ssh -p 19376 192.168.0.103'
  alias rustlings="cd ~/Programming/rustlings && /home/coldousedbird/.cargo/bin/rustlings"
  alias minecraft="java -jar ~/Downloads/TLauncher.v10/TLauncher.jar"
  alias llm_setup="~/Programming/GPT/llm_setup.sh"
  alias llm="~/Programming/GPT/Llama-3.2-1B-Instruct.Q6_K.llamafile"
fi

if [ "$HOSTNAME" = "archlinux" ]; then
  # package manager aliases
  alias pacman_remove="sudo pacman -Rs"
  alias pacman_clear="sudo pacman -Qdtq | pacman -Rs -"
  alias pacman_find="pacman -Ss"
  alias pacman_find_installed="sudo pacman -Qs"
  alias pacman_update="sudo pacman -Syu"
  # other specific
  alias swayconf="$EDITOR ~/.config/sway/config"
  alias doom="cd ~/Games/terminal-doom && zig-out/bin/terminal-doom"
fi
