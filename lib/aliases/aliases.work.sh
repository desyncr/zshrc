# restarts vagrant and runs build all
#alias restart="cd ~/Workspace/boxes && ./.restart && cd -"

# updates current branch
alias gu="git up"

# updates current branch and restart vagrant (runs build all)
#alias up="gu && restart"

# check outs a branch
alias gco="git co "

export AFL_ROOT="/afluenta-platform/"
export AFL_SCRIPTS="$AFL_ROOT/afluenta_core/afluenta/scripts"

alias scripts="cd $AFL_SCRIPTS"

# Quickly see error logs
alias errorlog="lnav /var/log/phperror.log /tmp/queries.afluenta.txt"
alias err="lnav /var/log/phperror.log /tmp/queries.afluenta.txt"
alias t="echo 'Gonna execute tests...'; sleep 5; cd $AFL_SCRIPTS && php ./test_zone.php"

# Update translations
alias translations="php $AFL_SCRIPTS/locale_import.php master_with_dev"

# Update actions
alias actions="cd $AFL_ROOT && php $AFL_ROOT/afluenta_web/lib/sync_actions.php && php $AFL_ROOT/afluenta_web/symfony cc && cd -"

# Run workers
alias workers="cd $AFL_SCRIPTS && php $AFL_SCRIPTS/cmd_start_workers.php"

alias killmem="sudo pkill memcached"
alias km="sudo pkill memcached"

alias gruntt="cd $AFL_ROOT/afluenta_web/grunt-public && grunt build-all && grunt watch"
alias gr=gruntt

alias mysql="mysql --host=192.168.1.210 --user=afluenta --password=dev#root afluenta"
