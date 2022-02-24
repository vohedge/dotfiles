# Bash
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
  . /etc/bash_completion
fi

# Alias
source $HOME/.dotfiles/bash/alias.sh

# fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
source $HOME/.dotfiles/bash/fzf-history.sh
source $HOME/.dotfiles/bash/fzf-ghq.sh
source $HOME/.dotfiles/bash/fzf-git.sh
source $HOME/.dotfiles/bash/fzf-ssh-hosts.sh

# Python
[ command -v pyenv &> /dev/null ] && eval "$(pyenv init -)"
source $HOME/.dotfiles/bash/auto-venv.sh

# Kubernetes
# source $HOME/.dotfiles/bash/kubernetes.sh

# Prompt
source $HOME/.dotfiles/bash/prompt.sh
