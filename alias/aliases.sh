# shortcuts
alias c=clear
alias df="df -h "
#alias pwgen="< /dev/urandom tr -dc 'A-Za-z0-9\\?!=-_' | head -c13"
alias du='du -hd1|sort -h'

alias pingo="while [[ $? ]]; do ping 8.8.8.8; sleep 1; done"
#alias p="ping 8.8.8.8"

# safe-rm if available
if (( $+commands[safe-rm] )); then
  alias rm='safe-rm'
else
  alias rm='rm -i'
fi

# if pbcopy is not available
if ! which pbcopy &>/dev/null && which xsel &>/dev/null; then
    alias pbcopy='xsel --clipboard --input'
    alias pbpaste='xsel --clipboard --output'
fi

case $(uname) in
  Linux)
    alias open=nautilus
    ;;
esac
