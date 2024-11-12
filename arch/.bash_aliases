# dotfiles/arch/.bash_aliases

# default
alias new="clear && cd && exec bash"
alias ls="ls -lha --color=auto"
alias bashconf="$EDITOR ~/.bash_aliases"
alias note="cd ~/Notes && nvim"
alias ya="yazi"
alias c="cmatrix -sC yellow -u 3"
alias ff="fastfetch -s Title:Separator:OS:Host:Kernel:Uptime:Packages:Processes:Display:WM:Terminal:Shell:Editor:CPU:GPU:Memory:Swap:Disk:Battery:Separator:Colors"

# git
alias ga="git add"
alias gc="git commit"
alias gpu="git push"
alias gpl="git pull"
alias gs="git status"
alias gl="git log"
alias gauth="gh auth setup-git"

# specific
alias swayconf="nvim ~/.config/sway/config"
alias icat="kitty icat"
alias doom="cd ~/Games/terminal-doom && zig-out/bin/terminal-doom"
