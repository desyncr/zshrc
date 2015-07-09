[[ -e ~/.fzf.zsh ]] && source ~/.fzf.zsh

#[[ -e ~/.rvm/bin ]] && PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
#[[ -e ~/.rvm/scripts/rvm ]] && source ~/.rvm/scripts/rvm

#export PHPBREW_SET_PROMPT=0
#[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
# use 'echo prefix = ~/.node >> ~/.npmrc' to configure npm bin path
[[ -e ~/.node/bin ]] && PATH=$PATH:$HOME/.node/bin

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

