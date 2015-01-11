#-------------------------------------------------------#
# File:     .zshrc   ZSH resource file                  
#-------------------------------------------------------#

#------------------------------
# Prompt
#------------------------------
source $ZDOTDIR/prompts/minimal_git.zsh

#------------------------------
# History
#------------------------------
source $ZDOTDIR/history.zsh

#------------------------------
# Environment
#------------------------------
source $ZDOTDIR/environment.zsh

#-----------------------------
# Keybindings
#-----------------------------
source $ZDOTDIR/keybindings.zsh

#------------------------------
# Aliases
#------------------------------
source $ZDOTDIR/aliases.zsh

#------------------------------
# zstyles
#------------------------------
source $ZDOTDIR/zstyles.zsh

#------------------------------
# Functions
#------------------------------

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

#------------------------------
# Modules 
#------------------------------
# Syntax highlighting
#source $ZDOTDIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

if [ -f /etc/arch-release ]
then
	# command not found hook
	source /usr/share/doc/pkgfile/command-not-found.zsh
fi

if [ -f $HOME/.opam/opam-init/init.zsh ]
then
	# OPAM configuration
	source $HOME/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
fi

# dircolors
where dircolor > /dev/null && eval `dircolors $HOME/.config/dircolors/dircolors.custom`

