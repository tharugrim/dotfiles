#-------------------------------------------------------#
# File:     history.zsh   ZSH history settings                  
#-------------------------------------------------------#

HISTFILE="${HOME}/.zsh_history"
HISTSIZE=2000
SAVEHIST=1000

# history settings see `man 1 zshoptions` for information about the settings
setopt extended_history
setopt no_hist_beep
setopt hist_expire_dups_first
setopt hist_fcntl_lock
setopt hist_find_no_dups
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_no_store
setopt hist_reduce_blanks
