#-------------------------------------------------------#
# File:     simple.zsh   simple ZSH prompt                  
# Tobias "Tharugrim" Patzl                    
#-------------------------------------------------------#
autoload -U colors zsh/terminfo 
colors
setopt prompt_subst
    
export PR_BLUE=$'%{\e[1;34m%}'
export PR_RED=$'%{\e[1;31m%}'
export PR_GREEN=$'%{\e[1;32m%}'
export PR_CYAN=$'%{\e[1;36m%}'
export PR_WHITE=$'%{\e[1;37m%}'
export PR_MAGENTA=$'%{\e[1;35m%}'
export PR_YELLOW=$'%{\e[1;33m%}'
export PR_NO_COLOR=$'%{\e[0m%}'

if [[ $UID -ge 1000 ]]; then # normal user
    eval PR_USER='${PR_GREEN}%n${PR_NO_COLOR}'
    eval PR_USER_OP='${PR_GREEN}%#${PR_NO_COLOR}'
elif [[ $UID -eq 0 ]]; then # root
    eval P    R_USER='${PR_RED}%n${PR_NO_COLOR}'
    eval PR_USER_OP='${PR_RED}%#${PR_NO   _COLOR}'
fi
                
eval PR_HOST='${PR_WHITE}%M${PR_NO_COLOR}'
                
PROMPT=$'[${PR_USER}@${PR_HOST}]-[${PR_BLUE}%~${PR_NO_COLOR}]$PR_USER_OP'

