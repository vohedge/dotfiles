# Bash
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
  . /etc/bash_completion
fi
source $HOME/.dotfiles/bash/os.sh

# Alias
source $HOME/.dotfiles/bash/alias.sh

# Prompt
source $HOME/.dotfiles/bash/prompt.sh

# Utilities
source $HOME/.dotfiles/bash/wsl2-open.sh

# fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
source $HOME/.dotfiles/bash/fzf-history.sh
source $HOME/.dotfiles/bash/fzf-ghq.sh
source $HOME/.dotfiles/bash/fzf-git.sh
source $HOME/.dotfiles/bash/fzf-boilr.sh
source $HOME/.dotfiles/bash/fzf-ssh-hosts.sh

# Python
[ command -v pyenv &> /dev/null ] && eval "$(pyenv init -)"
source $HOME/.dotfiles/bash/auto-venv.sh
source $HOME/.dotfiles/bash/boilr-venv.sh
source $HOME/.dotfiles/bash/qtconsole.sh

# Kubernetes
# source $HOME/.dotfiles/bash/kubernetes.sh
