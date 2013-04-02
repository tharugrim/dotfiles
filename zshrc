#-------------------------------------------------------#
# File:     .zshrc   ZSH resource file                  
# Author:   Tobias "Tharugrim" Patzl                    
#-------------------------------------------------------#

#------------------------------
# Prompt
#------------------------------
source $HOME/.zsh/prompts/simple.zsh

#------------------------------
# History
#------------------------------
source $HOME/.zsh/history.zsh

#------------------------------
# Environment
#------------------------------
source $HOME/.zsh/environment.zsh

#-----------------------------
# Keybindings
#-----------------------------
source $HOME/.zsh/keybindings.zsh

#------------------------------
# Functions
#------------------------------
source $HOME/.zsh/functions/x.zsh

#------------------------------
# Aliases
#------------------------------
source $HOME/.zsh/aliases.zsh

#------------------------------
# zstyles
#------------------------------
source $HOME/.zsh/zstyles.zsh

#------------------------------
# Colors 
#------------------------------
# Less Colors for Man Pages
export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
export LESS_TERMCAP_me=$'\E[0m'           # end mode
export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'           # end underline
export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline