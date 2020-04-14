alias sos="source $HOME/.bashrc"
alias osup="sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y"
alias apt-i="sudo apt install $1 -y"

alias g="git"
alias g-ci="g add . && g ci -m $1"
alias c="composer"
alias c-d="composer dump-autoload --optimize"
alias c-r="composer require"

alias torrnado="ssh -i $HOME/.ssh/rsa-01 rsa-01@35.207.132.12"
alias bp42-dpl="g push && torrnado './deploy-bp42'"
alias bp42-log="torrnado 'tail -f /var/log/nginx/error.log'"

if [ -d "/snap/bin" ] ; then
    PATH="/snap/bin:$PATH"
fi

PATH="vendor/bin:$PATH"
