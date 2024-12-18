# dotfiles/bash/.bash_aliases


# default
alias new="clear && cd && exec bash"
alias ls="ls -a --color=auto --group-directories-first"
alias l='eza -a --group-directories-first'
alias ll='eza -alh --group-directories-first --git-repos'
alias lt='eza -alhTL=2 --group-directories-first --git-repos --git-ignore'
alias llt='eza -alhTL=5 --group-directories-first --git-repos --git-ignore'
alias conf="cd ~/dotfiles && $EDITOR"
alias vimkeys="bind -p | grep -v '^#\|self-insert\|^$'"
alias note="cd ~/Notes && $EDITOR"
alias ya="yazi"
alias c="cmatrix -sC yellow -u 3"
alias ff="fastfetch -s Title:Separator:OS:Host:Kernel:Uptime:Packages:Processes:Display:DE:WM:Terminal:Shell:Editor:CPU:GPU:Memory:Swap:Disk:Battery:Separator:Colors"
alias g="git"
alias icat="kitty icat"


if [ "$HOSTNAME" = "fedora" ]; then
  # package managers aliases
  alias dnfinst="sudo dnf install"
  alias dnfrem="sudo dnf remove"
  alias dnfind="dnf search"
  alias dnfup="sudo dnf update"
  alias flatinst="flatpak install --noninteractive -y flathub"
  alias flatrem="flatpak remove --noninteractive -y"
  alias flatfind="flatpak search"
  alias up="sudo dnf upgrade --refresh --best --allowerasing -y && flatpak update -y"
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
  alias cl="sudo pacman -Qdtq | pacman -Rs -"
  alias up="sudo pacman -Syu"
  # other specific
  alias swayconf="$EDITOR ~/.config/sway/config"
  alias doom="cd ~/Games/terminal-doom && zig-out/bin/terminal-doom"
fi

