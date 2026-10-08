# .zshrc

Repository to save my custom Zsh settings and themes.

## Install

* Install [Antigen](https://github.com/zsh-users/antigen) in `$HOME/.antigen`:

      git clone https://github.com/zsh-users/antigen.git $HOME/.antigen

* Clone this repo in `$HOME/.zshrc.d`:

      git clone https://github.com/desyncr/zshrc.git $HOME/.zshrc.d

* Configure it into your `$HOME/.zshrc`:

      echo "export ZSH_CUSTOM=$HOME/.zshrc.d"  >> $HOME/.zshrc
      echo "source \$ZSH_CUSTOM/bootstrap.zsh"        >> $HOME/.zshrc   # load configuration

      # Or you could use my own .zshrc at $HOME/.zshrc.d/.zshrc

* Restart Zsh and done!

## Configure

Check ``bootstrap.zsh`` for examples and default configuration.

## Customize

``bootstrap.zsh`` is responsible for loading any custom script such as ``functions.zsh``,
``alias.zsh`` and any custom library.

Config is split by scope:

* ``personal/`` — generic config meant to be shared publicly (tracked in git).
* ``work/`` — machine/company-specific config: internal hostnames, VPN-only
  paths, employer tooling, etc. Gitignored, so it never leaves the machine
  it's set up on. See ``work/README.md``.

Both directories follow the same file convention: ``alias.zsh``,
``functions.zsh``, ``env.zsh``. ``bootstrap.zsh`` always loads ``personal/``,
then loads any matching files under ``work/`` if present.

Custom themes are located at ``themes`` directory . Custom libraries are located at ``lib``
directory.

## Feedback

If you'd like to contribute to the project or file a bug or feature request, please visit
[the project page][1].

## License

The project is licensed under the [GNU GPL v3][2] license.

  [1]: https://github.com/desyncr/zshrc/
  [2]: http://www.gnu.org/licenses/gpl.html
