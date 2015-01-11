#-------------------------------------------------------#
# File:     aliases.zsh   ZSH aliases                  
#-------------------------------------------------------#

alias e='$HOME/bin/switch-to-emacsclient'

alias ls="ls --color=auto -F"

#alias rm=safe-rm
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# remove reminder from bar
#alias reset-rem='echo RESET_REM > $PANEL_FIFO'

alias gmail="mutt -F $HOME/.mutt/muttrc-gmail"
alias zoho="mutt -F $HOME/.mutt/muttrc-zoho"

alias -g sprunge="curl -F 'sprunge=<-' http://sprunge.us"

# firefox addon-sdk
alias addon-sdk="cd /opt/addon-sdk && source bin/activate; cd -"
