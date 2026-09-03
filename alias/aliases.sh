# shortcuts
alias c=clear
alias df="df -h "
#alias pwgen="< /dev/urandom tr -dc 'A-Za-z0-9\\?!=-_' | head -c13"
alias du='du -hd1|sort -h'

alias pingo="while [[ $? ]]; do ping 8.8.8.8; sleep 1; done"
#alias p="ping 8.8.8.8"
alias vim=nvim

alias rm='rm -i'

# if pbcopy is not available
if ! which pbcopy &>/dev/null && which xsel &>/dev/null; then
  alias pbcopy='xsel --clipboard --input'
  alias pbpaste='xsel --clipboard --output'
fi

alias lg=lazygit

case $(uname) in
Linux)
  alias open=nautilus
  ;;
esac

alias vi=vim
alias vim=nvim
alias gd=lg
alias ls="eza -l"
