# Load zsh custom sources
source $ZSH_CUSTOM/lib/functions.zsh

# Load all environment variables
cd $ZSH_CUSTOM
   load ".env*.zsh"
cd - &> /dev/null

# Load antigen and bootstrap the configuration
source $ANTIGEN/antigen.zsh
source $ZSH_CUSTOM/.antigenrc

# Finally load alises
cd "$ZSH_CUSTOM/lib"
    load "aliases*.sh"
cd - &> /dev/null
