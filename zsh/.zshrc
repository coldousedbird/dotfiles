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
DEFAULT_COLOR="cyan" # orange F57D26 light green befc5a pastel d3c6aa
## git integration
git_repo() {
  local branch="%F{black}$(git branch --show-current 2> /dev/null) %f%k "
  local git_status="$(git status 2> /dev/null)"
  [[ "$git_status" =~ "git pull" ]] && echo -n "%K{magenta} $branch" && return 0
  [[ "$git_status" =~ "git push" ]] && echo -n "%K{magenta} $branch" && return 0
  [[ "$git_status" =~ "Untracked files:" ]] && echo -n "%K{red} $branch" && return 0
  [[ "$git_status" =~ "Changes not staged for commit:" ]] && echo -n "%K{yellow} $branch" && return 0
  [[ "$git_status" =~ "Changes to be committed:" ]] && echo -n "%K{green} $branch" && return 0
  [[ "$git_status" =~ "working tree clean" ]] && echo -n "%K{$DEFAULT_COLOR} $branch" && return 0
}
## command start time
preexec() {
  print -P '%K{$DEFAULT_COLOR}%F{black}   %*   %f%k'
}
NEWLINE=$'\n'
PROMPT='${NEWLINE}%K{$DEFAULT_COLOR}%F{000} %n %f%k %K{$DEFAULT_COLOR}%F{000} %~ %f%k $ '
RPROMPT='$(git_repo)'
echo -ne "\033]0;$NAME\007"


# autosuggestions
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# syntax highlighting
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
