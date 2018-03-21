# Prevent tmux from screwing up my PATH
if [ -f /etc/profile ]; then
  PATH=""
  source /etc/profile
fi

PATH=./bin:~/bin:$PATH

HISTSIZE=10000
HISTFILESIZE=10000

eval "$(rbenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias l="ls -l"
alias ll="ls -la"
alias ..="cd .."

alias be="bundle exec "

export EDITOR="/usr/local/bin/nvim"

# Keyboardio
export SKETCHBOOK_DIR=$HOME/Documents/Arduino

# Nvim wants to know
export TERM=iterm2

# Word-movement bindings
bind '"\e[1;5D":backward-word'
bind '"\e[1;5C":forward-word'
