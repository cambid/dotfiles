umask 022

[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
      . /usr/share/bash-completion/bash_completion

export LS_OPTIONS='--color=auto'
eval $(dircolors -b)
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -l'
alias acroread='evince'

alias ..='cd ..'
alias ...="cd ../.."
alias svn='colorsvn'
alias vi='vim'
alias mp3-downloader="youtube-dl -tc --extract-audio --audio-format=mp3 --audio-quality 256k"
alias bzvfr="ssh bzvfr"
alias sophie="ssh sophie"
alias jump="ssh jump"
alias virt3="ssh virt3"
alias spotify="spotify --force-device-scale-factor=2"

PS1="\[\e[33;1m\][$(date +%H:%M)] \[\e[32;1m\]\u\[\e[37;1m\]@\[\e[31;1m\]\h:\[\e[0;1m\]\w > \[\e[0m\]"
export PS1

if [ -d ~/bin ] ; then
    PATH=$HOME/bin:"${PATH}"
fi

export NNTPSERVER="news.alphanet.ch"
export EDITOR="vim"

export BSTINPUTS=/usr/share/texmf-dist/bibtex/bst//:$HOME/.texmf/bibtex//:.:
export TEXINPUTS=/home/jfader/.texmf-fader/tex//:.:
export MIKTEX_INSTALLROOT=${HOME}/.texmf
export MIKTEX_REPOSITORY=ftp://ftp.fu-berlin.de/tex/CTAN/systems/win32/miktex/tm/packages/

# settings for git
export GIT_AUTHOR_NAME="Jan Fader"
export GIT_AUTHOR_EMAIL="jan.fader@web.de"
export GIT_COMMITTER_NAME="Jan Fader"
export GIT_COMMITTER_EMAIL="jan.fader@web.de"
export EMAIL="Jan Fader <jan.fader@web.de>"

# settings for history
export HISTTIMEFORMAT='%F-%T '
export HISTSIZE=1000000
export HISTFILESIZE=1000000
shopt -s histappend
shopt -s cmdhist
shopt -s checkwinsize
export HISTCONTROL=erasedups:ignoreboth
PROMPT_COMMAND='history -a'

GPG_TTY=$(tty)
export GPG_TTY

# used by gnupod-utils
export IPOD_MOUNTPOINT="/mnt/ipod"
