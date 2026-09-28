# shortcuts
alias c=clear
alias df="df -h "
alias pwgen="openssl rand -base64 24"
alias du='du -hd1|sort -h'

alias pingo="ping 8.8.8.8"

# if pbcopy is not available
if ! which pbcopy &>/dev/null && which xsel &>/dev/null; then
  alias pbcopy='xsel --clipboard --input'
  alias pbpaste='xsel --clipboard --output'
fi

# git
alias lg=lazygit
alias gd=lazygit
alias vim=nvim
alias v=nvim

# Replace ls with eza
alias ls='eza'

# Common combinations
alias ll='eza -l --icons --git'
alias la='eza -la --icons --git'
alias lt='eza -T --icons --git-ignore'

alias gc="git commit "
alias gs="git status "
