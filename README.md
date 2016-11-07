.zshrc
==========

Repository to save my custom Zsh settings and themes.

Install
-------
* Install [Antigen](https://github.com/zsh-users/antigen) in `$HOME/.antigen`:

        git clone https://github.com/zsh-users/antigen.git $HOME/.antigen

* Clone this repo in `$HOME/.zshrc.d`:

        git clone https://github.com/desyncr/zshrc.git $HOME/.zshrc.d

* Configure it into your `$HOME/.zshrc`:

        echo "export ZSH_CUSTOM=${ZSH_CUSTOM:-$HOME/.zshrc.d}"  >> $HOME/.zshrc
        echo "source $ZSH_CUSTOM/bootstrap.zsh"                 >> $HOME/.zshrc   # load configuration

        # Or you could use my own .zshrc at $HOME/.zshrc.d/.zshrc

* Restart Zsh and done!


Optional
--------

* Install Powerline fonts. See section below.

Configure
---------

Check ``bootstrap.zsh`` for examples and default configuration.

Powerline fonts
-----------

Installing Powerline fonts can be tricky sometimes. These steps worked for me.
Taken from [here](https://github.com/cereda/f21-setup).

Install powerline:

    $ sudo dnf install powerline

Install Powerline fonts from https://github.com/powerline/fonts:

    $ wget https://github.com/powerline/fonts/archive/master.zip
    $ unzip master.zip
    $ cd fonts-master/
    $ ./install.sh
    $ sudo fc-cache -fsv ~/.fonts

Remember to configure your terminal to set the default font to some powerline
variant. Also remember to set the monospace font configured to powerline system-wide.
On Gnome this can be done going to Tweak Tool -> Fonts.

After powerline fonts are installed in order to actually use the theme you have to
set ``ANTIGEN_POWERLINE`` environment variable to ``true``.

More info [here](https://powerline.readthedocs.org/en/latest/installation/linux.html#fonts-installation).

Customize
-------
``bootstrap.zsh`` is reponsible for loading any custom script such as ``functions.sh``,
``aliases.sh`` and any custom library.

The files ``functions.sh`` and ``aliases.sh`` holds any custom function and aliases
respectibly.

Custom themes are located at ``themes`` directory . Custom libraries are located at ``lib``
directory.


## Feedback

If you'd like to contribute to the project or file a bug or feature request, please visit
[the project page][1].

## License

The project is licensed under the [GNU GPL v3][2] license.

  [1]: https://github.com/desyncr/zshrc/
  [2]: http://www.gnu.org/licenses/gpl.html
