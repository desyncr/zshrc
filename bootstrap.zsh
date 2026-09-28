# Load zsh custom sources
source $ZSH_CUSTOM/personal/functions.zsh

# Load all environment variables
source "$ZSH_CUSTOM/personal/env.zsh"

# Load antigen and bootstrap the configuration
source /usr/local/share/antigen.zsh
antigen init $ZSH_CUSTOM/antigenrc

source "$ZSH_CUSTOM/personal/alias.zsh"

# Work-specific overrides (machine-local, gitignored — see work/README.md)
for f in "$ZSH_CUSTOM/work/functions.zsh" "$ZSH_CUSTOM/work/env.zsh" "$ZSH_CUSTOM/work/alias.zsh"; do
  [[ -f $f ]] && source "$f"
done
