# shortcuts
alias mkdir="mkdir -p "
alias ll="ls -lShr "
alias lt="ls -lthr "
alias df="df -h "
alias psgrep="ps aux | grep "
alias vlc=" vlc "
alias vnull="vim -u /dev/null "
alias v="vim "
alias pwgen='< /dev/urandom tr -dc A-Za-z0-9\\?!=-_ | head -c13'
alias :q="exit"
alias todo="vim ~/Projects/notes/todo"
alias apt="sudo aptitude "
alias reboot="sudo shutdown -r now"
alias mutt="mutt -R"

# custom shortcuts
alias dlist="dumpr.sh --list=list"
alias turl="curl --socks5-hostname 127.0.0.1:9050 "
alias phpup="php -S 127.0.0.1:9001"

# git
alias gs="git status"
alias gd="git difftool "
alias shipit="gp origin master"
#alias git="hub"

# zsh related
alias zcustom="vim $ZSH_CUSTOM/custom.sh"
alias zalias="vim $ZSH_CUSTOM/aliases.sh"
alias zfunctions="vim $ZSH_CUSTOM/functions.sh"

if ! which pbcopy >/dev/null && which xsel >/dev/null; then
    alias pbcopy='xsel --clipboard --input'
    alias pbpaste='xsel --clipboard --output'
fi

