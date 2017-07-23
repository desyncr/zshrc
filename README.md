# .zshrc

Repository to save my custom Zsh settings and themes.

## Install

* Install [Antigen](https://github.com/zsh-users/antigen) in `$HOME/.antigen`:

        git clone https://github.com/zsh-users/antigen.git $HOME/.antigen

* Clone this repo in `$HOME/.zshrc.d`:

        git clone https://github.com/desyncr/zshrc.git $HOME/.zshrc.d

* Configure it into your `$HOME/.zshrc`:

        echo "export ZSH_CUSTOM=$HOME/.zshrc.d"		>> $HOME/.zshrc
        echo "source \$ZSH_CUSTOM/bootstrap.zsh"        >> $HOME/.zshrc   # load configuration

        # Or you could use my own .zshrc at $HOME/.zshrc.d/.zshrc

* Restart Zsh and done!


## Configure

Check ``bootstrap.zsh`` for examples and default configuration.


## Customize

``bootstrap.zsh`` is responsible for loading any custom script such as ``functions.sh``,
``aliases.sh`` and any custom library.

The files ``functions.sh`` and ``aliases.sh`` holds any custom function and aliases
respectably.

Custom themes are located at ``themes`` directory . Custom libraries are located at ``lib``
directory.


## Feedback

If you'd like to contribute to the project or file a bug or feature request, please visit
[the project page][1].


## License

The project is licensed under the [GNU GPL v3][2] license.

  [1]: https://github.com/desyncr/zshrc/
  [2]: http://www.gnu.org/licenses/gpl.html
