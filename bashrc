# things I like to do
alias d=docker
alias ls="exa"
alias la="ls -al"
alias ll="ls -l"
alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"
alias h=history
alias help=apropos
alias cd..="cd .."
alias ping="ping -c 4"
alias mkdir='mkdir -p'
alias unsafe="unalias rm;unalias mv;unalias cp"
alias init="source ~/.bashrc"
alias sleepy="pmset displaysleepnow"
alias myip='curl icanhazip.com'
alias suvi="sudo vi"
alias du=dust
alias find="echo 'use fd instead' && find"


# tailoring 'less'
alias more='less'
export PAGER=less
export LESSCHARSET='latin1'
export LESSOPEN='|/usr/bin/lesspipe.sh %s 2>&-'
       # Use this if lesspipe.sh exists.
export LESS='-i -w  -z-4 -g -e -M -X -F -R -P%t?f%f \
:stdin .?pb%pb\%:?lbLine %lb:?bbByte %bb:-...'

SHELL=/bin/bash

umask 022

BLUE="\[\033[0;34m\]"
RED="\[\033[0;31m\]"
LIGHT_RED="\[\033[1;31m\]"
WHITE="\[\033[1;37m\]"
NO_COLOUR="\[\033[0m\]"

PS1="$BLUE\[\033]0;\w\007\]\
$BLUE[$RED\$(date +%H:%M)$BLUE]$NOCOLOUR \w$BLUE\n\$$NO_COLOUR "
PS2='> '
PS4='+ '

ulimit -S -c 0        # Don't want any coredumps
set -o notify
set -o noclobber
set -o ignoreeof
set -o nounset

# NVM
export NVM_DIR="/Users/andrew.eisenberg/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
