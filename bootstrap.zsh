# Load zsh custom sources
source $ZSH_CUSTOM/lib/functions.zsh

# Load all environment variables
source "$ZSH_CUSTOM/env"

# Load antigen and bootstrap the configuration
source $ANTIGEN/antigen.zsh
antigen init $ZSH_CUSTOM/.antigenrc

# Finally set up aliases and key bindings
load "$ZSH_CUSTOM/alias/.*.sh"
