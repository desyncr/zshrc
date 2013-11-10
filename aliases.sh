# shortcuts
alias mkdir="mkdir -p "
alias ll="ls -lShr "
alias lt="ls -lthr "
alias df="df -h "
alias psgrep="ps aux | grep "
alias vlc=" vlc "
alias vnull="vim -u /dev/null "

# custom shortcuts
alias dlist="dumpr.sh --list=list"
alias turl="curl --socks5-hostname 127.0.0.1:9050 "
alias phpup="php -S 127.0.0.1:9000"

# git
alias gs="git status"
#alias git="hub"

# zsh related
alias zcustom="vim $ZSH_CUSTOM/custom.sh"
alias zalias="vim $ZSH_CUSTOM/aliases.sh"
alias zfunctions="vim $ZSH_CUSTOM/functions.sh"

if ! which pbcopy >/dev/null && which xsel >/dev/null; then
    alias pbcopy='xsel --clipboard --input'
    alias pbpaste='xsel --clipboard --output'
fi

