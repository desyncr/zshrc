# Load zsh custom sources
source $ZSH_CUSTOM/functions.zsh

# Load all environment variables
source "$ZSH_CUSTOM/env.zsh"

# Load antigen and bootstrap the configuration
source /usr/local/share/antigen.zsh
antigen init $ZSH_CUSTOM/antigenrc

source "$ZSH_CUSTOM/alias.zsh"
