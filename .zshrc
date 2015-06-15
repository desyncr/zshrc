# Set up the prompt
autoload -Uz promptinit
promptinit
#prompt adam1
setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.config/zsh_history

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

export ANTIGEN=~/.antigen/
export _ANTIGEN_CACHE_ENABLED=true
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=$ANTIGEN/repos/https-COLON--SLASH--SLASH-github.com-SLASH-zsh-users-SLASH-zsh-syntax-highlighting.git/highlighters/

[[ -z $ZSH_CUSTOM ]] && ZSH_CUSTOM=$(dirname $(readlink -f ~/.zshrc))
source $HOME/.zshrc.d/bootstrap.zsh

#[[ -e ~/.rvm/bin ]] && PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
#[[ -e ~/.rvm/scripts/rvm ]] && source ~/.rvm/scripts/rvm

# use 'echo prefix = ~/.node >> ~/.npmrc' to configure npm bin path
[[ -e ~/.node/bin ]] && PATH=$PATH:$HOME/.node/bin

#export EDITOR='vim'
#[[ -e ~/.fzf.zsh ]] && source ~/.fzf.zsh

#export PHPBREW_SET_PROMPT=0
#[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc
export GIT_EDITOR=vim
export VISUAL=vim
export EDITOR=vim

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
