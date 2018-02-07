# Laravel
alias t="vendor/bin/phpunit"
alias la="php artisan"
alias lafre="la cache:clear && la config:clear && composer dumpautoload && la migrate:fresh --seed"
alias lapro="composer install --optimize-autoloader && la config:cache && la route:cache && npm run prod"
alias ladeploy="git pull && lafre && lapro"

# SSH
alias umalpha="sshpass -f /usr/local/etc/umalpha ssh umalpha@umalpha.badvps.com"
alias umdev3="sshpass -f /usr/local/etc/umdev3 ssh umdev3@umdev3.badvps.com"

# Services
function ss () {
    sudo service $1 restart
}
function sl () {
    service --status-all
}
function sdis () {
    sudo service "$1" stop && sudo systemctl disable "$1"
}
function sen () {
    sudo systemctl enable "$1" && sudo service "$1" start
}

# APT
function aptl () {
    apt search "^$1"
}
function apti () {
    sudo apt install "$1"
}
function aptu () {
    sudo apt update && sudo apt upgrade --yes && sudo apt autoremove
}
function aptrm () {
    sudo apt purge "$1" && sudo apt autoremove
}
