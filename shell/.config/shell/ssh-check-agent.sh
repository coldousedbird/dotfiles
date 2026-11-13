# creating new or activating existing ssh-agent
## check if ssh-agent exist, and if not - create it and save it's stdout (with environment variables) to file
! pgrep -u "$USER" ssh-agent > /dev/null && ssh-agent > ~/.ssh/agent_env
## source environment variables from file
source ~/.ssh/agent_env > /dev/null
## check if key added to agent and add if not
! ssh-add -l > /dev/null && ssh-add
