#-------------------------------------------------------#
# File:     aliases.zsh   ZSH aliases                  
# Author:   Tobias "Tharugrim" Patzl                    
#-------------------------------------------------------#

alias ls="ls --color=auto -F"

alias rm=safe-rm
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# remove reminder from bar
#alias reset-rem='echo RESET_REM > $PANEL_FIFO'

alias gmail="mutt -F /home/tobias/.mutt/muttrc-gmail"
alias zoho="mutt -F /home/tobias/.mutt/muttrc-zoho"

alias -g sprunge="curl -F 'sprunge=<-' http://sprunge.us"

# suffix aliases
alias -s gz='aunpack'
alias -s zip='aunpack'
alias -s pdf=zathura
alias -s git='git clone'

alias -s png=sxiv
alias -s jpg=sxiv
alias -s jpeg=sxiv
alias -s JPG=sxiv
alias -s JPEG=sxiv
alias -s xcf=gimp
