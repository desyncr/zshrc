export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Configure vim as default editor
export GIT_EDITOR=vim
export VISUAL=vim
export EDITOR=vim

# Set up antigen path
export ANTIGEN=${ANTIGEN:-$HOME/.antigen}

# Custom configuration
export HISTORY_BASE=~/.config/directory_history
#export IFS=$'\n'

# Remove this annoyance
setopt NO_BEEP

export _ANTIGEN_CACHE_ENABLED=true
export PROMPT_GEOMETRY_GIT_CONFLICTS=true
#export PROMPT_GEOMETRY_SHOW_RPROMPT=true
export PROMPT_DOCKER_MACHINE_ENABLED=true
export PROMPT_GEOMETRY_EXEC_TIME=false
export PROMPT_VIRTUALENV_ENABLED=true
export PROMPT_GEOMETRY_RPROMPT_ASYNC=true

autoload -U deer
zle -N deer
bindkey '\ek' deer

