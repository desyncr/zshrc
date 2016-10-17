export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Configure vim as default editor
export GIT_EDITOR=vim
export VISUAL=vim
export EDITOR=vim

# Set up antigen path
export ANTIGEN=${ANTIGEN:-$HOME/Projects/antigen/}

# Custom configuration
export HISTORY_BASE=~/.config/directory_history
export CDL_LS_PARAMS='-l'
#export IFS=$'\n'

# Enable (or not) THEME_POWERLINE themes
export THEME_POWERLINE=${THEME_POWERLINE:-false}
export POWERLEVEL9K_TIME_FORMAT="%D{%H:%M | %d.%m.%y}"

# Remove this annoyance
setopt NO_BEEP
bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line
bindkey "\e[3~" delete-char

# Move word with Ctrl + left, right
bindkey "\e[1;5C" forward-word
bindkey "\e[1;5D" backward-word
