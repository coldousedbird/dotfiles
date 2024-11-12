# dotfiles/fedora/.bashrc

# environment variables
EDITOR=nvim

# source global definitions
if [ -f /etc/bashrc ]; then
. /etc/bashrc
fi

# user aliases
if [ -f .bash_aliases ]; then
. .bash_aliases
fi

# greetings!
ff

# synth-shell-prompt.sh
if [ -f /home/coldousedbird/.config/synth-shell/synth-shell-prompt.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source /home/coldousedbird/.config/synth-shell/synth-shell-prompt.sh
fi
