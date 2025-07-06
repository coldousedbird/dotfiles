# options
setopt autocd extendedglob notify inc_append_history
unsetopt beep nomatch

# completion setup
_comp_options+=(globdots)
zstyle :compinstall filename '/home/coldousedbird/.zshrc'
zstyle ':completion:*' menu select
zmodload zsh/complist
autoload -U compinit && compinit
autoload -U colors && colors


# vim mode
bindkey -v
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char


# fzf shell integration
eval "$(fzf --zsh 2> /dev/null)"

# importing configuration files
files=(
  ~/.config/shell/environment  # shell environment
  ~/.config/shell/aliases      # shell aliases
  ~/.config/shell/inputrc      # inputrc config
  ~/.specific                  # file for host specific stuff
)
for file in ${files[@]}; do
  test -f $file && source $file
done

# prompt
# PS1="%B%{$fg[white]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# PROMPT="${NEWLINE}%K{#2E3440}%F{#E5E9F0}$(date +%_I:%M%P) %K{#3b4252}%F{#ECEFF4} %n %K{#4c566a} %~ %f%k ❯ "
PROMPT="${NEWLINE}%K{#d3c6aa}%F{#000} %n %f%k %K{#d3c6aa}%F{#000} %~ %f%k $ "
PS0="${NEWLINE}%K{#2E3440}%F{#E5E9F0}$(date +%T)"

# autosuggestions
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# syntax highlighting
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
