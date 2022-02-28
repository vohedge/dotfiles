# Quick navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# User specific aliases and functions
alias ls='ls --color'
alias l='ls --color'
alias ll='ls --color -al'
alias sudo='sudo -E'
alias s='screen'
# alias hosts='sudo vim /etc/hosts'
# alias ssh-config='cat ~/.ssh/config | grep Host'
# alias sc='cat ~/.ssh/config | grep Host'

# Alias for Git
alias gcd='cd $(git rev-parse --show-toplevel)'
alias g='git'
alias gs='git status'
alias ga='git add .'
alias gc='git checkout'
alias gcm='git commit'
alias gu='git add -A && git commit -m "update!" && git push origin master'
alias gd='git diff'
# git branch はfzfで代用する
#alias gb='git branch'
alias gl='git log --graph --decorate --pretty=format:"%ad [%cn] <c:%h t:%t p:%p> %n %Cgreen%d%Creset %s %n" --stat -p'
alias gls='git log --stat --summary'

# Docker-compose
alias dc='docker-compose'

# kubernetes
alias k='kubectl'
complete -F __start_kubectl k
alias kc='kubectx'
alias kn='kubens'
