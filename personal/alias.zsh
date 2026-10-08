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

# Replace ls with eza while accepting GNU ls's -t short option.
function ls() {
  local arg translated
  local -i parsing_options=1
  local -a eza_args

  for arg in "$@"; do
    if (( parsing_options )) && [[ "$arg" == "--" ]]; then
      parsing_options=0
      eza_args+=("$arg")
    elif (( parsing_options )) && [[ "$arg" == -[^-]*t* ]]; then
      translated="${arg//t/}"
      [[ "$translated" != "-" ]] && eza_args+=("$translated")
    else
      eza_args+=("$arg")
    fi
  done

  command eza -s modified "${eza_args[@]}"
}

# Common combinations
alias ll='eza -l -smodified --icons --git'
alias la='eza -la -smodified --icons --git'
alias lt='eza -T -smodified --icons --git-ignore'

alias gc="git commit "
alias gs="git status "
