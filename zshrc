# Set custom prompt
setopt PROMPT_SUBST
autoload -U promptinit
promptinit
#prompt grb

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="kolo"
export DEFAULT_USER="jasonamyers"
export PGHOST=localhost
autoload -U compinit
compinit


alias ls='ls -G'  
alias ll='ls -hlatr --color'
alias gg='history | grep'
#alias vim='~/Applications/MacVim.app/Contents/MacOS/Vim'
alias breakitdown="history | awk '{a[$2]++ } END{for(i in a){print a[i] ' ' i}}'|sort -rn |head -n 20"
alias cleanpyc='find . -type f -name "*.pyc" -delete'
alias startpost='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias stoppost='pg_ctl -D /usr/local/var/postgres stop -s -m fast'

alias pmr='python manage.py runserver'
alias pmshell='python manage.py shell'
alias pmdb='python manage.py dbshell'
alias md='mkdir -p'
alias rd='rmdir'
alias d='dirs -v'
alias g='git'
alias gst='git status'
alias gl='git pull'
alias gp='git push'
alias gd='git diff -w "$@" | vim'
alias gc='git commit -v'
alias gca='git commit -va'
alias gco='git checkout'
alias gb='git branch'
alias gba='git branch -a'
alias gbd='git branch -d'
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
export GREP_OPTIONS="--color"
# If not running interactively, don't do anything
[ -z "$PS1" ] && return

export EDITOR="vim"
export HISTSIZE=100000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE
export HISTFILESIZE=100000
export HISTCONTROL=ignoreboth
export HISTIGNORE="&:[ ]*:ls:ll:la:l:cd:pwd:exit:mc:su:df:clear"

export WORKON_HOME=$HOME/.virtualenv
export VIRTUALENVWRAPPER_PYTHON=/opt/boxen/homebrew/Cellar/python/2.7.5/bin/python
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
export PROJECT_HOME=$HOME/Develop
if [[ -r /usr/local/bin/virtualenvwrapper.sh ]]; then
    source /usr/local/bin/virtualenvwrapper.sh
else
    echo "WARNING: Can't find virtualenvwrapper.sh"
fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/bin:/usr/local/heroku/bin:$PATH"

alias tmux="TERM=screen-256color-bce tmux"
# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want disable red dots displayed while waiting for completion
# DISABLE_COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git, fabric, osx, pip, redis-cli, sublime, tmux, virtualenvwrapper)

source $ZSH/oh-my-zsh.sh
source .zsh/func/color_cmds
# Customize to your needs...
alias ssh=color-ssh
alias pmr=color-pmr
alias pg=color-psql
[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh
