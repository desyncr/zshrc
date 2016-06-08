# restarts vagrant and runs build all
alias restart="cd ~/Workspace/boxes && ./.restart && cd -"

# updates current branch
alias gu="git up"

# updates current branch and restart vagrant (runs build all)
alias up="gu && restart"

# check outs a branch
alias gco="git co "

# Quickly see error logs
alias errorlog="lnav /var/log/phperror.log /tmp/queries.afluenta.txt"
