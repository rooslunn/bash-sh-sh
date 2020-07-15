alias cp="cp -R"
alias rm="rm -r"
alias reborn="sudo shutdown -r now"
alias rest="sudo shutdown now"

alias sos="source $HOME/.bashrc"
alias osup="sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y && clear"
alias apt-i="sudo apt install $1 -y"
alias cds="cd $HOME/src"
alias cdt="cd $HOME/src/torrnado"

alias g="git"
alias g-ci="g add . && g ci -m $1"
alias c="composer"
alias c-d="composer dump-autoload --optimize"
alias c-r="composer require"
alias qc="quickcheck"
alias pcf="php-cs-fixer fix"
alias apts="apt search ^$1$"

# Docker
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
alias d-clrall="(echo '==> Images...'; dclri) && (echo '==> Containers...'; dclrc)"
alias d-login="docker exec -it"

alias dc-up="docker-compose up --remove-orphans -d"
alias dc-stop="docker-compose stop"
alias dc-ps="docker-compose ps"
alias dc-stats="docker stats"
alias dc-prune="docker system prune -a"
alias dc-logs="docker-compose logs"
alias dc-build="docker-compose build"

# Laravel
alias laranew="composer create-project laravel/laravel $1"

# Android
# adb devices
# adb install <path to apk>

# Gradle
alias grbd="gradle assembleDebug"

# AWS
alias german-f="ssh -i ~/.ssh/GermanFelsbauGeneral.pem ec2-user@35.176.246.44"

# Torrnado
alias torrnado="ssh -i $HOME/.ssh/rsa-01 rsa-01@35.207.132.12"
alias bp42-dpl="g push && torrnado './deploy-bp42'"
alias bp42-log="torrnado 'tail -f /var/log/nginx/error.log'"

# Vim project launchers
alias ahooli="vim -S ~/.vim/sessions/ahooli.vim"
alias altilium="vim -S ~/.vim/sessions/altilium.vim"

# Paths
if [ -d "/snap/bin" ] ; then
    PATH="/snap/bin:$PATH"
fi

if [ -d ".config/composer/vendor/bin" ] ; then
    PATH=".config/composer/vendor/bin:$PATH"
fi

# Android
JAVA_HOME=/usr/java/oracle/jdk1.8.0_251
ANDROID_HOME="$HOME/.android/sdk"
ANDROID_SDK_ROOT="$HOME/.android/sdk"

PATH="$HOME/bin:vendor/bin:$HOME/.composer/vendor/bin/:$HOME/.config/composer/vendor/bin/:$PATH"
PATH="$JAVA_HOME/bin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$PATH"
PATH="$HOME/.sdkman/bin:$PATH"

export ANDROID_HOME
export ANDROID_SDK_ROOT


#
#   mkcd command
#   This is an improvised version of the mkcd command at http://superuser.com/questions/152794/is-there-a-shortcut-to-mkdir-foo-and-immediately-cd-into-it
#   This function has to be added to the ~/.bashrc file
#   After that you can run command like: mkdir abc, mkdir -p one/two/three
#
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


