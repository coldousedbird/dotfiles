# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
. /etc/bashrc
fi

# User aliases
if [ -f .bash_aliases ]; then
. .bash_aliases
fi

# Greetings!
ff

##-----------------------------------------------------
# synth-shell-prompt.sh
if [ -f /home/coldousedbird/.config/synth-shell/synth-shell-prompt.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source /home/coldousedbird/.config/synth-shell/synth-shell-prompt.sh
fi

##-----------------------------------------------------
## alias
# if [ -f /home/coldousedbird/.config/synth-shell/alias.sh ] && [ -n "$( echo $- | grep i )" ]; then
# 	source /home/coldousedbird/.config/synth-shell/alias.sh
# fi
