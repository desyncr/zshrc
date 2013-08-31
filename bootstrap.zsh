[[ -z $ANTIGEN ]] && echo 'export ANTIGEN=(path to antigen)' && return 1
[[ -z $ZSH_CUSTOM ]] && ZSH_CUSTOM=$(dirname $(readlink -f $0))

# Load antigen library
source $ANTIGEN/antigen.zsh
source $ZSH_CUSTOM/.antigenrc

# Load zsh custom sources
[[ -e $ZSH_CUSTOM/functions.sh ]] && source $ZSH_CUSTOM/functions.sh
[[ -e $ZSH_CUSTOM/aliases.sh ]]   && source $ZSH_CUSTOM/aliases.sh
[[ -e $ZSH_CUSTOM/lib/*.sh ]]     && source $ZSH_CUSTOM/lib/*.sh

# Load autojump
[[ -s ~/.autojump/etc/profile.d/autojump.zsh ]] && . ~/.autojump/etc/profile.d/autojump.zsh

