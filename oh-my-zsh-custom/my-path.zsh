# Custom Commands 
export PATH="$HOME/.dotfiles/bin:$PATH"

# rbenv
if [ -d ~/.rbenv ]; then
    export PATH="$HOME/.rbenv/shims:$HOME/.rbenv/bin:$PATH"
    eval "$(rbenv init -)"
fi

# Heroku Toolbelt
if [ -d /usr/local/heroku ]; then
    export PATH="/usr/local/heroku/bin:$PATH"
fi

# .local
if [ -d ~/.local/bin ]; then
    export PATH="$HOME/.local/bin:$PATH"
fi

