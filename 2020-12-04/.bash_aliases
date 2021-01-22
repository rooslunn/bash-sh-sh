# OS
alias sos="source $HOME/.bashrc"
alias osup="sudo apt update && sudo apt upgrade -y && sudo apt autoremove && snap refresh"
alias cp="cp -R"
alias rm="rm -r"
alias cdh="cd $HOME/code/honing"

# VPN
alias vpn-fozzy="sudo openvpn --config /etc/openvpn/fozzy.gw.ovpn"

# git
alias g="git"
alias g-ci="git add . && git commit -m $1"
alias g-cc="git log --format=format: --name-only | egrep -v '^$' | sort | uniq -c | sort -rg | head -10"

# php
alias serve="php -S localhost:8080"

# laravel
alias lara-new-dist="composer create-project --prefer-dist laravel/laravel $1"
alias l-n-d="lara-new-dist"
alias l-n-d-v6="composer create-project --prefer-dist laravel/laravel $1 \"6.*\""
alias lara-new-inst-jet="laravel new --prompt-jetstream $1"
alias l-n-i-j="lara-new-inst-jet"
alias arty="php artisan"

# composer
alias c="composer"
alias c-d="composer dump-autoload --optimize"

# docker
alias d="docker"
alias dc="docker-compose"

alias d-clr="docker container prune -f"
alias d-ls="docker container ls"
alias d-imgs="docker images"
alias d-rmi="docker rmi"
alias d-ps="docker ps -a"

alias d-clrv="docker volume ls -qf dangling=true | xargs -r docker volume rm"
alias d-clrn="docker network rm $(docker network ls | grep "bridge" | awk '/ / { print $1 }')"
alias d-clri="docker rmi $(docker images --filter "dangling=true" -q --no-trunc)"
alias d-clrc="docker rm $(docker ps -qa --no-trunc --filter 'status=exited') 2>/dev/null"
alias d-clr-all="docker system prune --all && docker volume prune"
alias d-login="docker exec -it"

# docker-compose
alias dc-up="docker-compose up --remove-orphans -d"
alias dc-stop="docker-compose stop"
alias dc-ps="docker-compose ps"
alias dc-stats="docker stats"
alias dc-prune="docker system prune -a"
alias dc-logs="docker-compose logs"
alias dc-build="docker-compose build"

# PATH
export PATH="$HOME/.config/composer/vendor/bin:$PATH"

# functions
function mkcd {
  last=$(eval "echo \$$#")
  if [ ! -n "$last" ]; then
    echo "Enter a directory name"
  elif [ -d $last ]; then
    echo "\`$last' already exists"
  else
    mkdir $@ && cd $last
  fi
}

