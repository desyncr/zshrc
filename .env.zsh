export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Configure vim as default editor
export GIT_EDITOR=vim
export VISUAL=vim
export EDITOR=vim

# Set up antigen path
export ANTIGEN=$HOME/.antigen

# Antigen global configurations
export _ANTIGEN_PERF_ENABLED=${_ANTIGEN_PERF_ENABLED:-false}
export _ANTIGEN_INIT_ENABLED=true
export _ANTIGEN_CACHE_ENABLED=true
# _ANTIGEN_XTRACE_ENABLED
# _ENABLE_MARK

# Custom configuration
export HISTORY_BASE=~/.config/directory_history
export CDL_LS_PARAMS='-l'
#export IFS=$'\n'

# Enable (or not) THEME_POWERLINE themes
export THEME_POWERLINE=${THEME_POWERLINE:-false}

# Default theme requires OMZ
export ZSH=$HOME/.antigen/repos/https-COLON--SLASH--SLASH-github.com-SLASH-robbyrussell-SLASH-oh-my-zsh.git
export ZSH_CACHE_DIR=$ZSH/cache

if [ $(uname) = "Darwin" ]; then
  # TODO this is different on linux
  # this adds 0.05s
  [[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
fi

# Remove this annoyance
setopt NO_BEEP
bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line
bindkey "\e[3~" delete-char

# Move word with Ctrl + left, right
bindkey "\e[1;5C" forward-word
bindkey "\e[1;5D" backward-word
