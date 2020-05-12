PROMPT=$'%F{green}[%~]%B%F{yellow}❯%b %F{grey}'

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

if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
    export VIRTUALENVWRAPPER_PYTHON=/usr/local/opt/python/libexec/bin/python
    export WORKON_HOME=$HOME/.virtualenvs
    source /usr/local/bin/virtualenvwrapper.sh
fi

export PATH="/usr/local/opt/python/libexec/bin:/usr/local/opt/ruby/bin:$PATH"

if which ruby >/dev/null && which gem >/dev/null; then
    PATH="$PATH:$(ruby -r rubygems -e 'puts Gem.default_dir')/bin"
fi

autoload -U select-word-style
select-word-style bash
