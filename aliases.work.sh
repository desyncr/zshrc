alias vagrant_reboot="vagrant destroy -f && vagrant up"
alias psqlr='/usr/local/pgsql/bin/psql -U smdev -d saludmovil'

alias pingoogle="ping 8.8.8.8"
alias restart_network="sudo ifconfig eth0 down && sudo ifconfig eth0 up"

alias sm='cd /var/www/sm/development/trunk/'
alias core='cd /home/dario/Workspace/core/trunk/'
alias admin='cd /var/www/admin/development/trunk/'

alias serverup='/home/dario/Workspace/infrastructure/serverup/serverup'

alias db='psql -U fw -d fw-dev-dc -h 10.30.100.42'
export GIT_EDITOR=vim
export VISUAL=vim
export EDITOR=vim

alias behat='bin/behat --config app/behat.yml --tags '
