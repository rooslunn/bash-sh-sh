# PHP
alias t="vendor/bin/phpunit || phpunit"
alias lara="php artisan"
alias serve="php -S localhost:8000"
alias sy="php bin/console"

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
