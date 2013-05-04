#-------------------------------------------------------#
# File:     history.zsh   ZSH history settings                  
# Author:   Tobias "Tharugrim" Patzl                    
#-------------------------------------------------------#

HISTFILE="$HOME/.zsh_history"
HISTSIZE=2000
SAVEHIST=1000

# history settings
setopt inc_append_history
setopt append_history
setopt bang_hist
setopt extended_history
setopt no_hist_allow_clobber
setopt no_hist_beep
setopt hist_expire_dups_first
setopt hist_fcntl_lock
setopt hist_find_no_dups
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_lex_words
setopt hist_no_functions
setopt hist_no_store
setopt no_hist_verify
setopt share_history
setopt hist_reduce_blanks
