# Load zsh custom sources
source $ZSH_CUSTOM/lib/functions.zsh

# Load all environment variables
# First it tries to load custom env.*.zsh then the default .env.zsh
# This is useful if you want to have custom (not versioned) environment configs,
# such as .env.work.zsh or .env.private.zsh.
cd $ZSH_CUSTOM
    load ".env.*.zsh"
    load ".env.zsh"
cd - &> /dev/null

# Load zpm and bootstrap the configuration
source $ZPM/zpm.zsh
source $ZSH_CUSTOM/.zpmrc

# Finally load alises
cd "$ZSH_CUSTOM/lib/aliases/"
    load ".*.sh"
cd - &> /dev/null
