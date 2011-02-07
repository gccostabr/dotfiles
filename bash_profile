#/bin/bash

export GREP_OPTIONS="--color=auto"
export GREP_COLOR="4;33"
export CLICOLOR="auto"

alias ls="ls -G"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

export PATH=$PATH:~/bin



export PS1="\[\033[01;32m\]\u\[\033[00;37m\]@\[\033[00;31m\]\h:\[\033[00;34m\]\w\[\033[00;31m\]\$(git branch 2>/dev/null | grep -e '^*' | sed -E 's/^\* (.+)$/ [\1] /')\[\033[m\]$ "



