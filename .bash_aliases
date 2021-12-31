# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'


alias ..="cd .."
alias ....="cd ../.."


# git
alias gs="git status"
alias ga="git add"
alias gp="git pull"


# general
alias sc="sudo systemctl"
alias upd="docker run --name watchtower -v /var/run/docker.sock:/var/run/docker.sock containrrr/watchtower --run-once --debug"