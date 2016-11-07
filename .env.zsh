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
export CDL_LS_PARAMS='-l'
#export IFS=$'\n'

# Enable (or not) THEME_POWERLINE themes
export THEME_POWERLINE=${THEME_POWERLINE:-false}
export POWERLEVEL9K_TIME_FORMAT="%D{%H:%M | %d.%m.%y}"

# Remove this annoyance
setopt NO_BEEP

