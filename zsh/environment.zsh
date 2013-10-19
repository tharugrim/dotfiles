#-------------------------------------------------------#
# File:     environment.vim   ZSH Environment                  
# Author:   Tobias "Tharugrim" Patzl                    
#-------------------------------------------------------#

export PATH="${PATH}:${HOME}/bin"
export GOPATH=~/go

export BROWSER="dwb"
export EDITOR="vim"
export PAGER="less"
export SUDO_EDITOR=$EDITOR
export GIT_EDITOR=$EDITOR

export PANEL_FIFO=/tmp/panel-fifo

GPG_TTY=`tty`
export GPG_TTY
