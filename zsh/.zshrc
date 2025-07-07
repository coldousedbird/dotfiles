# finally, zoomer shell config


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



# options
setopt autocd extendedglob notify inc_append_history prompt_subst
unsetopt beep nomatch

# completion setup
_comp_options+=(globdots)
zstyle :compinstall filename '/home/coldousedbird/.zshrc'
zstyle ':completion:*' menu select
zmodload zsh/complist
autoload -U compinit && compinit

# enabling colors!
autoload -U colors && colors

# vim mode
bindkey -v
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# prompt! 
## git integration
git_repo_color() {
  git_status="$(git status 2> /dev/null)"
  [[ "$git_status" =~ "Changes to be committed:" ]] && echo -n "%F{green}"
  [[ "$git_status" =~ "Changes not staged for commit:" ]] && echo -n "%F{yellow}"
  [[ "$git_status" =~ "Untracked files:" ]] && echo -n "%F{red}"
}
git_branch() {
  git branch --show-current 2> /dev/null
}

NEWLINE=$'\n'
PROMPT="${NEWLINE}%K{#d3c6aa}%F{000} %n %f%k %K{#d3c6aa}%F{000} %~ %f%k $ "
RPROMPT="$(git_repo_color) ($(git_branch)) %f %K{#d3c6aa}%F{000} %* %f%k"


# autosuggestions
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# syntax highlighting
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
