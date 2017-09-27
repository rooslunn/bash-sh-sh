# PHP
alias t="vendor/bin/phpunit"
alias lara="php artisan"

# Services
function ss () {
    sudo service $1 restart
}
function sl () {
    service --status-all
}

# APT
function aptl () {
    apt search "^$1"
}
function apti () {
    sudo apt install "$1"
}
function aptu () {
    sudo apt update && sudo apt upgrade --yes
}
