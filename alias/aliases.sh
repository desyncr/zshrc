# shortcuts
alias mkdir="mkdir -p "
#alias ls='ls --color=auto'
alias ll="ls -lShra "
alias l="ll"
alias lt="ls -lthra"

alias df="df -h "

alias pwgen="< /dev/urandom tr -dc 'A-Za-z0-9\\?!=-_' | head -c13"
alias :q="exit"
alias reboot="sudo shutdown -r now"
alias du='du -hd1|sort -h'
alias \#='echo "">/dev/null'
alias //='echo "">/dev/null'
alias j=z

alias pingo="while [[ $? ]]; do ping 8.8.8.8; sleep 1; done"
alias p="ping 8.8.8.8"

if (( $+commands[safe-rm] )); then
  alias rm='safe-rm'
else
  alias rm='rm -i'
fi

case $(uname) in
  Linux)
    alias open=nautilus
    ;;
esac

alias c=clear

