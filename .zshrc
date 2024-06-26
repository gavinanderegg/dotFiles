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

export DJANGO_COLORS='light'

UNAME_MACHINE="$(uname -m)"

if [[ "$UNAME_MACHINE" == "arm64" ]]; then
    # M1
    PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"
    PATH="/opt/homebrew/opt/python@3.10/libexec/bin:$PATH"
    PATH="/opt/homebrew/opt/php@8.0/bin:/opt/homebrew/opt/php@8.0/sbin:$PATH"
    PATH="/opt/homebrew/opt/ruby/bin:/opt/homebrew/lib/ruby/gems/3.3.0/bin:$PATH"
    PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"

    if [ -f /opt/homebrew/bin/virtualenvwrapper.sh ]; then
        export VIRTUALENVWRAPPER_PYTHON=/opt/homebrew/opt/python@3.9/libexec/bin/python
        export WORKON_HOME=$HOME/.virtualenvs
        source /opt/homebrew/bin/virtualenvwrapper.sh
    fi
else
    # Intel / Rosetta
fi

autoload -U select-word-style
select-word-style bash
