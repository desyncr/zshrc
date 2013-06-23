# load zsh custom sources
MYZSH=$ZSH_CUSTOM
source $MYZSH/functions.sh
source $MYZSH/aliases.sh
source $MYZSH/lib/*.sh

# load custom theme
[[ -z $ZSH_CUSTOM_THEME ]] && ZSH_CUSTOM_THEME='af-magic-mod'
ZSH_THEME=$ZSH_CUSTOM_THEME

# define custom plugins to load
[[ -z $ZSH_CUSTOM_PLUGINS ]] && 
	ZSH_CUSTOM_PLUGINS=(git git-extras symfony2 composer colorize command-not-found nyan lol)

# load custom plugins
zload_plugins $ZSH_CUSTOM_PLUGINS

# load autojump
[[ -s ~/.autojump/etc/profile.d/autojump.zsh ]] && . ~/.autojump/etc/profile.d/autojump.zsh
