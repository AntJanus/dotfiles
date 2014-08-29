export LSCOLORS=GxFxCxDxBxegedabagaced
export NODE_PATH="/usr/local/lib/node"
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/lib/node_modules:$PATH
export PATH=/usr/local/share/npm/bin:$PATH
export PATH=/usr/local/lib/node:$PATH
export PATH=~/bin:/usr/local/mysql/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=/Users/antoninjanuska/context/tex/texmf-osx-64/bin:$PATH
export NODE_PATH=$NODE_PATH:/usr/local/lib/node_modules

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi


alias gpp="git pull; git push"
alias gp="git pull"
alias gpu="git push"
alias gs="git status"
alias ga="git add ."
alias gr="git reset --hard HEAD"
alias kts="tx ls | awk '{print $1}' | sed 's/://g' | xargs -I{} tmux kill-session -t {}"

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

alias bex="bundle exec"
vim()
{
    # osx users, use stty -g
    stty stop '' -ixoff
    command vim "$@"
    stty "$STTYOPTS"
}

source ~/.bash_prompt
