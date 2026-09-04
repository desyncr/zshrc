export LC_ALL=en_GB.UTF-8
export LANG=en_GB.UTF-8

# Configure vim as default editor
export GIT_EDITOR=vim
export VISUAL=vim
export EDITOR=vim

# Set up antigen path
ANTIGEN="$HOME/.config/antigen"
ADOTDIR="$HOME/.config/antigen"

# Custom configuration
export HISTORY_BASE=~/.config/directory_history
#export IFS=$'\n'

# Remove this annoyance
setopt NO_BEEP

# Use fzf where available, otherwise fallback to zsh-select, selecta, etc
CTRLP_FUZZER_COMMAND='fzf'
zstyle ':completion:*' format $'Completing %d\n'

export TERM="xterm-256color"
export PATH=$PATH:/usr/local/bin

# https://github.com/bhilburn/powerlevel9k/issues/420
export ZLE_RPROMPT_INDENT=0

export GOROOT=/opt/homebrew/opt/go/libexec/
export PATH=$PATH:$GOROOT/bin

export HISTCONTROL=erasedups:ignorespace
export ZSH_FZF_HISTORY_SEARCH_REMOVE_DUPLICATES='true'

fpath=($fpath ~/.zsh/completions )
