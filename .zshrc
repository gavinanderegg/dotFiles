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

UNAME_MACHINE="$(uname -m)"

if [[ "$UNAME_MACHINE" == "arm64" ]]; then
    # M1
    PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"
    PATH="/opt/homebrew/opt/python@3.9/libexec/bin:$PATH"

    if [ -f /opt/homebrew/bin/virtualenvwrapper.sh ]; then
        export VIRTUALENVWRAPPER_PYTHON=/opt/homebrew/opt/python@3.9/libexec/bin/python
        export WORKON_HOME=$HOME/.virtualenvs
        source /opt/homebrew/bin/virtualenvwrapper.sh
    fi

    export NVM_DIR="$HOME/.nvm"
    [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
    [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
else
    # Intel / Rosetta

    export NVM_DIR="$HOME/.nvm_intel"
    [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
    [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
fi

autoload -U select-word-style
select-word-style bash
