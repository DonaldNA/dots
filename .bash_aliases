# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'


alias ..="cd .."
alias ....="cd ../.."


# git
alias g='git'
alias gst='git status'
alias gc='git commit'
alias ga='git add'
alias gpl='git pull'
alias gpom='git pull origin main'
alias gpu='git push'
alias gpuom='git push origin main'
alias gd='git diff'
alias gch='git checkout'
alias gnb='git checkout -b'
alias gac='git add . && git commit'
alias grs='git restore --staged .'
alias gre='git restore'
alias gr='git remote'
alias gcl='git clone'
alias glg="git log --graph --abbrev-commit --decorate --format=format:'%C(bold green)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold yellow)(%ar)%C(reset)%C(auto)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
alias gt='git ls-tree -r main --name-only'
alias grm='git remote'
alias gb='git branch'
alias gm='git merge'
alias gf='git fetch'

# general
alias sc="sudo systemctl"
alias upd="docker run --name watchtower -v /var/run/docker.sock:/var/run/docker.sock containrrr/watchtower --run-once --debug"
