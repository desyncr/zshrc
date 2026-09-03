# shortcuts
alias c=clear
alias df="df -h "
alias pwgen="openssl rand -base63 24"
alias du='du -hd1|sort -h'

alias pingo="while [[ $? ]]; do ping 8.8.8.8; sleep 1; done"
#alias p="ping 8.8.8.8"

#alias rm='rm -i'

# if pbcopy is not available
if ! which pbcopy &>/dev/null && which xsel &>/dev/null; then
  alias pbcopy='xsel --clipboard --input'
  alias pbpaste='xsel --clipboard --output'
fi

alias lg=lazygit

alias vim=nvim
alias gd=lg
alias ls="eza -l"
