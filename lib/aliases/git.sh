alias gs="git status"
alias gc="git commit"
alias gC="ga . && gc -m "
alias gd="git diff"
alias gp="git pull "
#alias ga="git add "
alias gf="git fetch --all"
alias gl="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all | tac"

# http://gitready.com/intermediate/2009/02/18/temporarily-ignoring-files.html#comment-247215295
alias gi="git update-index --assume-unchanged "
alias gui="git update-index --no-assume-unchanged"
alias gid="git ls-files -v | grep ^[a-z]"

alias gco="git checkout"
alias gu="git pull"

# https://hub.github.com/
#[[ -e "/usr/local/bin/hub" ]] && alias git="hub"

# fzf git add
FUZZER=zsh-select # default to zsh-select
if (( $+commands[fzf] )); then
    # use fzf if available
    FUZZER=fzf
fi

function git-add() {
    local file=true
    while [[ ! -z "$file" ]]; do
        file=$(git ls-files --modified|$FUZZER)
        if [[ -f "$file" ]]; then
            git add "$file";
        fi
    done
}

alias ga='git-add'
