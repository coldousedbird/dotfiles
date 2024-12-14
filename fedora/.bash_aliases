# dotfiles/fedora/.bash_aliases


# default
alias new="clear && cd && exec bash"
alias ls="ls -lha --color=auto --group-directories-first"
alias bashconf='$EDITOR ~/.bash_aliases'
alias gitconf='$EDITOR ~/.gitconfig'
alias note='cd ~/Notes && nvim .'
alias ya="yazi"
alias c="cmatrix -sC cyan -u 3"
alias ff="fastfetch -s Title:Separator:OS:Host:Kernel:Uptime:Packages:Processes:Display:DE:WM:Terminal:Shell:Editor:CPU:GPU:Memory:Swap:Disk:Battery:Separator:Colors"
alias g="git"

# package managers
alias dnfinst="sudo dnf install"
alias dnfrem="sudo dnf remove"
alias dnfind="dnf search"
alias dnfup="sudo dnf update"
alias flatinst="flatpak install --noninteractive -y flathub"
alias flatrem="flatpak remove --noninteractive -y"
alias flatfind="flatpak search"
alias up="sudo dnf upgrade --refresh --best --allowerasing -y && flatpak update -y"

# specific
alias sets='gnome-control-center'
alias heroic="flatpak run com.heroicgameslauncher.hgl"
alias connect_arch='ssh -p 19376 192.168.0.103'
alias rustlings="cd ~/Programming/rustlings && /home/coldousedbird/.cargo/bin/rustlings"
alias minecraft="java -jar ~/Downloads/TLauncher.v10/TLauncher.jar"
