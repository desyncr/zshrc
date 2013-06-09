# load zsh custom sources
MYZSH=$ZSH_CUSTOM
source $MYZSH/functions.sh
source $MYZSH/aliases.sh

# load custom theme
ZSH_THEME='af-magic-mod'

# load autojump
[[ -s ~/.autojump/etc/profile.d/autojump.zsh ]] && . ~/.autojump/etc/profile.d/autojump.zsh