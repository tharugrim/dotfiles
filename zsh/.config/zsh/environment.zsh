#-------------------------------------------------------#
# File:     environment.vim   ZSH Environment                  
#-------------------------------------------------------#

export PATH="${PATH}:${HOME}/bin:${HOME}/.gem/ruby/2.0.0/bin:${HOME}/.cabal/bin:${HOME}/.gem/ruby/2.1.0/bin"
export GOPATH=~/go

export BROWSER="firefox"
export EDITOR="vim"
export PAGER="less"
export SUDO_EDITOR=$EDITOR
export GIT_EDITOR=$EDITOR

export PASSWORD_STORE_DIR='/media/LUKSKYWALTER/.password-store'

GPG_TTY=`tty`
export GPG_TTY

export BAR_BACKGROUND="#FF141617"
export BAR_FOREGROUND="#FFFEFEFE"
export BAR_FONT="-*-profont-*-*-*-*-11-*-*-*-*-*-*-*"

# perl local::lib
eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib)"
