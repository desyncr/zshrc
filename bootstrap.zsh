# Load zsh custom sources
source $ZSH_CUSTOM/lib/functions.zsh

# Load all environment variables
# First it tries to load default env.zsh then the custom .env..*.zsh
# This is useful if you want to have custom (not versioned) environment configs,
# such as .env.work.zsh or .env.private.zsh.
#load "$ZSH_CUSTOM/.env.zsh" "$ZSH_CUSTOM/.env..*.zsh"
# ^ adds 0.01s for some reason
load "$ZSH_CUSTOM/.env.d/*"
source "$ZSH_CUSTOM/.env"

# Load antigen and bootstrap the configuration
source $ANTIGEN/antigen.zsh
antigen init $ZSH_CUSTOM/.antigenrc

#[[ ! -f "$HOME/.zpm-init.zsh" ]] && source "$ZSH_CUSTOM/.zpm-zsh"
#source "$HOME/.zpm-init.zsh"

# Finally set up aliases and key bindings
load "$ZSH_CUSTOM/alias/.*.sh"
