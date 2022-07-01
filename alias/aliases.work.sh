alias phpstorm-reset='bash ~/sys-vagrant/code/phpstorm-reset.sh'

alias vp='vagrant up'
alias down='vagrant halt'
alias restart='vagrant halt && vagrant up'
alias web='vagrant ssh web'
alias vagrant-restart='vagrant halt && vagrant up'

alias exads-tail='vagrant ssh web -c "sudo -i tail -f /var/log/php/error.log"'
alias exads-memcache-restart='vagrant ssh web -c "sudo /bin/systemctl restart memcached.service"'
alias exads-cc='vagrant ssh web -c "sudo -u exads -i php /var/www/jobs/campaigns-caching-v3.php --network=exads.rocks --debug"'
alias exads-ccp='vagrant ssh web -c "sudo -u exads -i php /var/www/jobs/campaigns-caching-v3-push.php --XXX --network=exads.rocks --network-hash=e738bad9 --debug"'

alias exads-my='vagrant ssh dbm -c "sudo mysql exads -pexads"'
