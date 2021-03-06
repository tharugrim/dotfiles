#-------------------------------------------------------#
# File:     simple.zsh   simple ZSH prompt                  
#-------------------------------------------------------#

autoload -U colors zsh/terminfo 
autoload -Uz vcs_info
colors
   
zstyle ':vcs_info:*' stagedstr '%F{28}●'
zstyle ':vcs_info:*' unstagedstr '%F{11}●'
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{11}%r'
zstyle ':vcs_info:*' enable git svn
precmd () {
    if [[ -z $(git ls-files --other --exclude-standard 2> /dev/null) ]] {
        zstyle ':vcs_info:*' formats '[%F{green}%b%c%u%F{black}]'
    } else {
        zstyle ':vcs_info:*' formats '%F{black}[%F{green}%b%c%u%F{red}●%F{black}]'
    }
 
    vcs_info
}

setopt prompt_subst

export PR_BLACK=$'%{\e[1;30m%}'
export PR_BLUE=$'%{\e[1;34m%}'
export PR_RED=$'%{\e[1;31m%}'
export PR_GREEN=$'%{\e[1;32m%}'
export PR_CYAN=$'%{\e[1;36m%}'
export PR_WHITE=$'%{\e[1;37m%}'
export PR_MAGENTA=$'%{\e[1;35m%}'
export PR_YELLOW=$'%{\e[1;33m%}'
export PR_NO_COLOR=$'%{\e[0m%}'

if [[ $UID -ge 1000 ]]; then # normal user
    eval PR_USER='${PR_YELLOW}%n${PR_NO_COLOR}'
    eval PR_USER_OP='${PR_YELLOW}:${PR_NO_COLOR}'
    PROMPT=$'$PR_BLACK%~ ${vcs_info_msg_0_} $PR_USER_OP '
elif [[ $UID -eq 0 ]]; then # root
    eval PR_USER='${PR_RED}%n${PR_NO_COLOR}'
    eval PR_USER_OP='${PR_RED}:${PR_NO_COLOR}'
    PROMPT=$'$PR_RED%~ ${vcs_info_msg_0_} $PR_USER_OP '
fi
