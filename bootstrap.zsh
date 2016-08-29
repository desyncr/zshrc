# Load zsh custom sources
source $ZSH_CUSTOM/lib/functions.zsh

# Load all environment variables
# First it tries to load default env.zsh then the custom .env..*.zsh
# This is useful if you want to have custom (not versioned) environment configs,
# such as .env.work.zsh or .env.private.zsh.
#load "$ZSH_CUSTOM/.env.zsh" "$ZSH_CUSTOM/.env..*.zsh"
# ^ adds 0.01s for some reason
source "$ZSH_CUSTOM/.env.zsh"

# Load antigen and bootstrap the configuration
source $ANTIGEN/antigen.zsh
if [[ "$_ANTIGEN_INIT_ENABLED" == "true" ]]; then
  antigen init $ZSH_CUSTOM/.antigenrc
else
  source $ZSH_CUSTOM/.antigenrc
fi

# Finally load alises
load "$ZSH_CUSTOM/lib/aliases/.*.sh"
