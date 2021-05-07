# --- system
alias clr="tput reset"
alias sos="source $HOME/.bashrc"
alias osup="sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y && sudo snap refresh"
alias cp="cp -R"
alias rm="rm -r"

alias cdc="cd $HOME/src/mirage/h5"
alias cds="cd $HOME/src"
alias cdr="cd $HOME/src/roos"
alias cda="cd $HOME/AndroidStudioProjects"

alias inxi-all="inxi -Fxxxrz"
alias inxi-0="inxi -Fxz"
alias reborn="sudo shutdown -r now"
alias soundon="pulseaudio -k"
alias eb="vim $HOME/.bash_aliases"

# --- APT
alias apti="sudo apt install -y $1"

# --- VPN
#alias vpn-fozzy="sudo openvpn --config /etc/openvpn/fozzy.gw.ovpn"

# AWS
alias f-aws="ssh -i ~/.ssh/id_rsa_cellardoor ubuntu@ec2-3-64-205-224.eu-central-1.compute.amazonaws.com"
alias f-aws-cp="scp -i ~/.ssh/id_rsa_cellardoor $1 ubuntu@ec2-3-64-205-224.eu-central-1.compute.amazonaws.com:downloads/"
alias c-aws="ssh -i ~/.ssh/id_rsa_cellardoor ubuntu@ec2-52-29-206-109.eu-central-1.compute.amazonaws.com"
alias c-aws-cp="scp -i ~/.ssh/id_rsa_cellardoor $1 ubuntu@ec2-52-29-206-109.eu-central-1.compute.amazonaws.com:downloads/"

# --- git
alias g="git"
alias g-c="git add . && git commit -m $1"
alias g-p="git push"
function g-c-p() {
    (git add .) && (git ci -m "$1") && (git push)
}
function g-cv-p() {
    (git add .) && (git ci) && (git push)
}
alias g-v-c="git add . && git commit"
alias g-cc="git log --format=format: --name-only | egrep -v '^$' | sort | uniq -c | sort -rg | head -10"
alias g-fix-ignore="git rm -r --cached . && git add . && git commit -m 'gitignore fixed untracked files'"

# --- php
alias serve="php -S localhost:8080"
alias p="./vendor/bin/pest"

# --- YARN
alias y="yarn"

# --- laravel
alias a="php artisan"
alias amf="a migrate:fresh"
alias amfs="amf --seed"
alias lara-new-dist="composer create-project --prefer-dist laravel/laravel $1"
alias l-n-d="lara-new-dist"
#alias l-n-d-v6="composer create-project --prefer-dist laravel/laravel $1 \"6.*\""
#alias lara-new-inst-jet="laravel new --prompt-jetstream $1"
#alias l-n-i-j="lara-new-inst-jet"

# --- composer
alias c="composer"
alias c-d="composer dump-autoload --optimize"
alias c-i="composer install"

# ---- terraform
alias t="terraform"

# --- docker
#alias d="docker"
#alias dc="docker-compose"

#alias d-clr="docker container prune -f"
#alias d-ls="docker container ls"
#alias d-imgs="docker images"
#alias d-rmi="docker rmi"
#alias d-ps="docker ps -a"

#alias d-clrv="docker volume ls -qf dangling=true | xargs -r docker volume rm"
#alias d-clrn="docker network rm $(docker network ls | grep "bridge" | awk '/ / { print $1 }')"
#alias d-clri="docker rmi $(docker images --filter "dangling=true" -q --no-trunc)"
#alias d-clrc="docker rm $(docker ps -qa --no-trunc --filter 'status=exited') 2>/dev/null"
#alias d-clr-all="docker system prune --all && docker volume prune"
#alias d-login="docker exec -it"

# --- docker-compose
#alias dc-up="docker-compose up --remove-orphans -d"
#alias dc-stop="docker-compose stop"
#alias dc-ps="docker-compose ps"
#alias dc-stats="docker stats"
#alias dc-prune="docker system prune -a"
#alias dc-logs="docker-compose logs"
#alias dc-build="docker-compose build"

# Java hujava
JAVA_HOME=""/usr/lib/jvm/jdk-16.0.1/""

# --- PATH
export PATH="$JAVA_HOME/bin:$HOME/.yarn/bin:$HOME/.config/composer/vendor/bin:/usr/local/go/bin:$HOME/go/bin:$PATH"
export LESS="-N -S"
export JAVA_HOME

# --- Use vim keybindings in cmdline
#set -o vi

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

