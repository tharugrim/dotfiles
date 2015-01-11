#-------------------------------------------------------#
# File:     keybindings.zsh   ZSH key config                  
#-------------------------------------------------------#

# enable emacs keybindings
bindkey -e

bindkey '^r' history-incremental-search-backward
bindkey "$terminfo[kcbt]" reverse-menu-complete


