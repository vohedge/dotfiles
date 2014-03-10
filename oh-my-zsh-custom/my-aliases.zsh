# My Aliases

# ls
alias lsa='ls -lah'
alias ll='ls -lah'
alias l='ls -lh'
alias la='ls -lAh'
alias sl=ls # often screw this up

# Directory
alias p="popd"

# tmux
alias tmux="tmux -2"
alias t="tmux"

# Short Cuts
alias hosts="sudo vim /etc/hosts"
alias config="sudo vim ~/.ssh/config"

# Exec ls when cd
chpwd() {
	CMD_LS="ll"
    if [ 150 -le $(\ls -A |wc -l) ]; then
        eval "$CMD_LS" -C | head -n 5
        echo '...'
        eval "$CMD_LS" -C | tail -n 5
        echo "$(\ls -A | wc -l | tr -d ' ') files exist"
    else
        eval "$CMD_LS"
    fi
    # cdd
    type _cdd_chpwd >/dev/null 2>&1 && _cdd_chpwd
}

# Alias for Git
alias gcd='pushd $(git rev-parse --show-toplevel);ll;'
alias g='git'
alias gs="git status"
alias gss="git status -s"
alias ga="git add"
alias gc="git checkout"
alias gcm="git commit"
alias gd="git diff"
alias gb="git branch"
alias gl="git log --graph --pretty='format:%C(yellow)%h%Cblue%d%Creset %s %C(black bold)%an, %ar%Creset'"

