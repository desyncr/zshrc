alias gs="git status"
alias gc="git commit"
alias gC="ga . && gc -m "
alias gd="git diff"
alias gp="git pull "
alias ga="git add "
alias gf="git fetch --all"
alias gl="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all | tac"

# https://hub.github.com/
[[ -e "/usr/local/bin/hub" ]] && alias git="hub"

