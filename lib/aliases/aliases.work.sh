# restarts vagrant and runs build all
alias restart="cd ~/Workspace/boxes && ./.restart && cd -"

# updates current branch
alias gu="git up"

# updates current branch and restart vagrant (runs build all)
alias up="gu && restart"

# check outs a branch
alias gco="git co "
