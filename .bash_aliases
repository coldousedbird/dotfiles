# ~/.bash_aliases

# env variables
EDITOR=nvim

# package managers
alias dnfinst="sudo dnf install"
alias dnfrem="sudo dnf remove"
alias dnfind="dnf search"
alias dnfup="sudo dnf update"
alias flatinst="flatpak install --noninteractive -y flathub"
alias flatrem="flatpak remove --noninteractive -y"
alias flatfind="flatpak search"
alias up="sudo dnf upgrade --refresh --best --allowerasing -y && flatpak update -y"

# git
alias ga="git add"
alias gc="git commit"
alias gpu="git push"
alias gpl="git pull"
alias gs="git status"
alias gl="git log"
alias gauth="gh auth setup-git"

# default bash alias
alias new="clear && exec bash"
alias ls="ls -lha --color=auto"
alias sets='gnome-control-center'
alias conf='$EDITOR ~/.bash_aliases'
alias note='cd ~/Notes && nvim .'
alias ra="ranger"
alias c="cmatrix -sC cyan -u 3"
alias ff="fastfetch -s Title:Separator:OS:Host:Kernel:Uptime:Shell:Editor:Display:DE:WM:Terminal:CPU:GPU:Memory:Swap:Disk:Battery:Break:Colors"

# other useful aliases
alias heroic="flatpak run com.heroicgameslauncher.hgl"
alias connect_arch='ssh -p 19376 192.168.0.103'
alias rustlings="cd ~/Programming/rustlings && /home/coldousedbird/.cargo/bin/rustlings"
alias minecraft="sudo java -jar ~/Downloads/TLauncher.v10/TLauncher.jar"

