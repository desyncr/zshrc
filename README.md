ZSH-CUSTOM
==========

Repository to save my custom ZSH (oh-my-shell) settings and themes.

Install
-------
* Git clone the repo to, say, ``$HOME/zsh-custom``
* ``export ZSH_CUSTOM=$HOME/zsh-custom``
* Done

Configure
---------
* ``export ZSH_CUSTOM_PLUGINS=(your prefered plugins and autocompletion files)
* ``export ZSH_THEME='your-theme'

Check ``bootstrap.zsh`` for examples and default configuration.

Customize
-------
``bootstrap.zsh`` is loaded automagically by oh-my-sh and basically sets up some global configuration.
It is reponsible for loading any custom script such as ``functions.sh``, ``aliases.sh`` and setting up the custom theme.

The files ``functions.sh`` and ``aliases.sh`` holds any custom function and aliases respectibly.

Custom themes are located at ``themes`` directory . Custom libraries are located at ``lib`` directory.