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

# Load antigen and bootstrap the configuration
source $ANTIGEN/antigen.zsh
if [[ "$_ANTIGEN_INIT_ENABLED" == "true" ]]; then
  antigen init $ZSH_CUSTOM/.antigenrc
else
  source $ZSH_CUSTOM/.antigenrc
fi

# Finally load alises
cd "$ZSH_CUSTOM/lib/aliases/"
    load ".*.sh"
cd - &> /dev/null

# Use _ANTIGEN_PERF_ENABLED to quickly craft a performance check (time _ANTIGEN_PERF_ENABLED=true zsh)
[[ "$_ANTIGEN_PERF_ENABLED" == "true" ]] && exit
