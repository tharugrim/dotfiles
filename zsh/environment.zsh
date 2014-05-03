#-------------------------------------------------------#
# File:     environment.vim   ZSH Environment                  
# Author:   Tobias "Tharugrim" Patzl                    
#-------------------------------------------------------#

export PATH="${PATH}:${HOME}/bin:${HOME}/.gem/ruby/2.0.0/bin:${HOME}/.cabal/    ↪bin:${HOME}/.gem/ruby/2.1.0/bin"
export GOPATH=~/go

export BROWSER="dwb"
export EDITOR="vim"
export PAGER="less"
export SUDO_EDITOR=$EDITOR
export GIT_EDITOR=$EDITOR

#export PANEL_FIFO=/tmp/panel-fifo

GPG_TTY=`tty`
export GPG_TTY

# make the zsh vim mode usable
export KEYTIMEOUT=1
