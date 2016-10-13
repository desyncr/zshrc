# restarts vagrant and runs build all
#alias restart="cd ~/Workspace/boxes && ./.restart && cd -"

# updates current branch
alias gu="git up"

# updates current branch and restart vagrant (runs build all)
#alias up="gu && restart"

# check outs a branch
alias gco="git co "

# Quickly see error logs
alias errorlog="lnav /var/log/phperror.log /tmp/queries.afluenta.txt"
alias err="lnav /var/log/phperror.log /tmp/queries.afluenta.txt"

# Update translations
alias translations="php ./afluenta_core/afluenta/scripts/locale_import.php master_with_dev"

# Update actions
alias actions="cd /afluenta-platform && php ./afluenta_web/lib/sync_actions.php && php ./afluenta_web/symfony cc && cd -"

# Run workers
alias workers="cd /afluenta-platform/afluenta_core/afluenta/scripts && php ./cmd_start_workers.php && cd -"

alias killmem="sudo pkill memcached"
alias km="sudo pkill memcached"

alias gruntt="cd /afluenta-platform/afluenta_web/grunt-public && grunt build-all && grunt watch"
alias gr=gruntt
