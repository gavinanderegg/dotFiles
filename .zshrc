# Colours - https://github.com/gawin/bash-colors-256
PROMPT=$'%F{022}[%~]%B%F{yellow}❯%b %F{grey}'
RPROMPT="%F{240}[%T]%F"

# TMOUT=1 # - set for always updating time

TRAPALRM() {
    zle reset-prompt
}

export LSCOLORS='gxfxcxdxbxegedabagacad'
alias ls='ls -GFh'

export EDITOR=vim

alias server='python -m http.server'
alias headers='curl -I -H "Accept-Encoding: gzip,deflate"'

alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'

alias git-count='git rev-list --all --count'

alias bridge='socat TCP-LISTEN:8000,bind=127.0.0.1,fork TCP:192.168.64.2:8000'

alias venv='source .venv/bin/activate'

export DJANGO_COLORS='light'

PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"
PATH="/opt/homebrew/opt/node@22/bin:$PATH"
PATH="/opt/homebrew/opt/python@3.13/libexec/bin:$PATH"
PATH="/opt/homebrew/opt/ruby/bin:$PATH"
PATH="/opt/homebrew/lib/ruby/gems/3.4.0/bin:$PATH"
PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"

if [ -f /opt/homebrew/bin/virtualenvwrapper.sh ]; then
    export WORKON_HOME=$HOME/.virtualenvs
    source /opt/homebrew/bin/virtualenvwrapper.sh
fi

autoload -U select-word-style
select-word-style bash
