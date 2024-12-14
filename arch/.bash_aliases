# dotfiles/arch/.bash_aliases


# default
alias new="clear && cd && exec bash"
alias ls="ls -lha --color=auto --group-directories-first"
alias bashconf="$EDITOR ~/.bash_aliases"
alias gitconf="$EDITOR ~/.gitconfig"
alias note="cd ~/Notes && nvim"
alias ya="yazi"
alias c="cmatrix -sC yellow -u 3"
alias ff="fastfetch -s Title:Separator:OS:Host:Kernel:Uptime:Packages:Processes:Display:WM:Terminal:Shell:Editor:CPU:GPU:Memory:Swap:Disk:Battery:Separator:Colors"
alias g="git"
alias icat="kitty icat"

# specific
alias swayconf="nvim ~/.config/sway/config"
alias doom="cd ~/Games/terminal-doom && zig-out/bin/terminal-doom"
