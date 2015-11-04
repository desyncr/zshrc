# Load fuzzy file find
[[ -e ~/.fzf.zsh ]] && source ~/.fzf.zsh

#[[ -e ~/.rvm/bin ]] && PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
#[[ -e ~/.rvm/scripts/rvm ]] && source ~/.rvm/scripts/rvm

#export PHPBREW_SET_PROMPT=0
#[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc

# Load nvm if present
# export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# use 'echo prefix = ~/.node >> ~/.npmrc' to configure npm bin path
[[ -e ~/.node/bin ]] && PATH=$PATH:$HOME/.node/bin

# set up heroku toolbelt installed through "wget -qO- https://toolbelt.heroku.com/install.sh | sh"
[[ -e "/usr/local/heroku/bin" ]] && PATH="/usr/local/heroku/bin:$PATH"

# Custom configuration
export HISTORY_BASE=~/.config/directory_history
export CDL_LS_PARAMS='-l'
#export IFS=$'\n'

# Set up zpm path
export ZPM=~/.zpm

# Enable (or not) THEME_POWERLINE themes
export THEME_POWERLINE=${THEME_POWERLINE:-false}

# Powerline theme config
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)

export GIT_EDITOR=vim
export VISUAL=vim
export EDITOR=vim

# Default theme requires OMZ
export ZSH=$HOME/.zpm/repos/https-COLON--SLASH--SLASH-github.com-SLASH-robbyrussell-SLASH-oh-my-zsh.git
export ZSH_CACHE_DIR=$ZSH/cache

# Remove this annoyance
setopt NO_BEEP
bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line
bindkey "\e[3~" delete-char

# Move word with Ctrl + left, right
bindkey "\e[1;5C" forward-word
bindkey "\e[1;5D" backward-word
