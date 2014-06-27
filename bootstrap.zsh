[[ -z $ANTIGEN ]] && echo 'export ANTIGEN=(path to antigen)' && return 1

export HISTORY_BASE=~/.config/directory_history
export CDL_LS_PARAMS='-l'

# Fix default zstyle for tab completion
zstyle ':completion:*' format ''
zstyle ':completion:*' menu select auto

# Load antigen library
source $ANTIGEN/antigen.zsh
source $ZSH_CUSTOM/.antigenrc

# Load zsh custom sources
[[ -e $ZSH_CUSTOM/functions.sh ]] && source $ZSH_CUSTOM/functions.sh
for file in $(ls $ZSH_CUSTOM/aliases.*); do
    source $file
done

[[ -e $ZSH_CUSTOM/lib/*.sh ]]     && source $ZSH_CUSTOM/lib/*.sh

# Load autojump
[[ -s ~/.autojump/etc/profile.d/autojump.zsh ]] && . ~/.autojump/etc/profile.d/autojump.zsh

