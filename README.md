.zshrc
==========

Repository to save my custom ZSH settings and themes.

Install
-------
* Install [Antigen](https://github.com/zsh-users/antigen) somewhere:

        git clone git@github.com:zsh-users/antigen.git ~/.antigen
        source ~/.antigen/antigen.zsh

* [Optional] Install powerline fonts. See section below.

* Clone this repo somewhere:

        git clone git@github.com:desyncr/zshrc.git ~/.zshrc.d

* Hook the new .zshrc:

        [[ -e ~/.zshrc ]] && mv ~/.zshrc ~/.zshrc.$(date +%s)
        ln -s ~/.zshrc.d/.zshrc ~

* Alternatively, use it in your own .zshrc:

        echo "export ANTIGEN=~/.antigen/" >> ~/.zshrc # exports Antigen path
        echo "source ~/.zshrc.d/bootstrap.zsh" >> ~/.zshrc # loads out stuff


* Restart zsh and done!


Optional
--------

* Install autojump

        git clone git://github.com/joelthelion/autojump.git
        cd autojump
        ./install.sh

* Install fzf

        git clone https://github.com/junegunn/fzf.git ~/.fzf
        ~/.fzf/install

        rm ~/.fzf.zsh
        ln ~/zshrc/.fzf.zsh ~/.fzf.zsh

Configure
---------

Check ``bootstrap.zsh`` for examples and default configuration.

If you run into problems with themes or the prompt run the following command and restart the shell:

    sed -i "s/prompt /#prompt /g" ~/.zshrc

Powerline fonts
-----------

Installing Powerline fonts can be tricky sometimes. These steps worked for me. Taken from [here](https://github.com/cereda/f21-setup).

Install powerline:

    $ sudo dnf install powerline

Install Powerline fonts from https://github.com/powerline/fonts:

    $ wget https://github.com/powerline/fonts/archive/master.zip
    $ unzip master.zip
    $ cd fonts-master/
    $ ./install.sh
    $ sudo fc-cache -fsv ~/.fonts

Remember to configure your terminal to set the default font to some powerline variant. Also remember to set the monospace font configured to powerline system-wide. On Gnome this can be done going to Tweak Tool -> Fonts.

After powerline fonts are installed in order to actually use the theme you have to set ``ANTIGEN_POWERLINE`` environment variable to ``true``.

More info [here](https://powerline.readthedocs.org/en/latest/installation/linux.html#fonts-installation).

Customize
-------
``bootstrap.zsh`` is reponsible for loading any custom script such as ``functions.sh``, ``aliases.sh`` and any custom library.

The files ``functions.sh`` and ``aliases.sh`` holds any custom function and aliases respectibly.

Custom themes are located at ``themes`` directory . Custom libraries are located at ``lib`` directory.


## Feedback

If you'd like to contribute to the project or file a bug or feature request, please visit [the project page][1].

## License

The project is licensed under the [GNU GPL v3][2] license.

  [1]: https://github.com/desyncr/zshrc/
  [2]: http://www.gnu.org/licenses/gpl.html
