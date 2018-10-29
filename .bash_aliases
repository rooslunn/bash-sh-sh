# Testing
alias t="vendor/bin/phpunit"
alias c="./vendor/bin/codecept"
alias cc="c run"

# Composer
alias comp="composer"
alias compd="comp dumpautoload"

# Laravel
alias la="php artisan"
alias lacre="composer create-project --prefer-dist laravel/laravel $1"
alias lafre="la cache:clear && la config:clear && composer dumpautoload && la migrate:fresh --seed"
alias lapro="composer install --optimize-autoloader && la config:cache && la route:cache && npm run prod"
alias ladeploy="git pull && lafre && lapro"
alias nglog="tail -f /var/log/nginx/error.log"
alias vlog="tail -f $HOME/.valet/Log/nginx-error.log"

# Symfony
alias sy="php bin/console"

# Misc
alias g="git"
alias h="history"
alias d="docker"
alias dcomp="docker-compose"
alias cdd="cd $HOME/dev"
alias cdp="cd $HOME/dev/payop"

alias wake="echo $'\a'"
alias cp="cp -r"
alias scp="scp -r"
alias rm="rm -r"
alias mkdir="mkdir -p"
alias reb="sudo shutdown -r now"

alias cpkey="command cat ~/.ssh/id_rsa.pub | pbcopy"

# Node/Yarn
alias yd="yarn run dev"

# PhpStorm
#export PHP_IDE_CONFIG="serverName=eshop"
#export ANDROID_HOME="$HOME/Android/Sdk"

# Commands
function portu () {
	(echo "Upgrading ports tree..." ; \
	sudo port selfupdate) && \
	(echo "Upgrading outdated ports..." ; \
	sudo port upgrade outdated) && \
	(echo "Removing inactive ports..." ; \
	sudo port uninstall inactive)
}

function mkcd () {
    mkdir "$@" && cd "$@"
}

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
    sudo apt update && sudo apt upgrade --yes && sudo apt autoremove --yes && snap refresh
}

function aptrm () {
    sudo apt purge "$1" && sudo apt autoremove
}

function lise () {
    aptitude search "$1"
}

# CS
alias csnf="LD_LIBRARY_PATH=bin ldd bin/vguimatsurface.so | grep 'not found'"
