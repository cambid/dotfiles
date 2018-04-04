umask 022

[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
      . /usr/share/bash-completion/bash_completion

PS1="\[\e[33;1m\][$(date +%H:%M)] \[\e[32;1m\]\u\[\e[37;1m\]@\[\e[31;1m\]\h:\[\e[0;1m\]\w > \[\e[0m\]"
export PS1

# settings for history
export HISTTIMEFORMAT='%F-%T '
export HISTSIZE=1000000
export HISTFILESIZE=1000000
shopt -s histappend
shopt -s cmdhist
shopt -s checkwinsize
export HISTCONTROL=erasedups:ignoreboth
PROMPT_COMMAND='history -a'

if [ -f ~/.aliases ]; then
    source ~/.aliases
fi

if [ -f ~/.env ]; then
    source ~/.env
fi
