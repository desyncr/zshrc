# shortcuts
alias mkdir="mkdir -p "
alias ll="ls -lShra "
alias lt="ls -lthra "
alias df="df -h "
alias v="vim "
alias vi="vim -u ~/Projects/vimrc/essential.vim"
alias pwgen="< /dev/urandom tr -dc 'A-Za-z0-9\\?!=-_' | head -c13"
alias :q="exit"
alias reboot="sudo shutdown -r now"
alias diskusage='du -hd1|sort -h'

alias pingoogle="ping 8.8.8.8"

alias serve="python -m SimpleHTTPServer"

# git
alias gs="git status"
alias gc="git commit"
alias gC="ga . && gc -m "
alias gd="git difftool "
alias gp="git pull "
alias gl="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all | tac"

if ! which pbcopy &>/dev/null && which xsel &>/dev/null; then
    alias pbcopy='xsel --clipboard --input'
    alias pbpaste='xsel --clipboard --output'
fi

# pip install thefuck
alias fuck='eval $(thefuck $(fc -ln -1 | tail -n 1)); fc -R'
