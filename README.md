.zshrc
==========

Repository to save my custom ZSH settings and themes.

Install
-------
* Install [Antigen](https://github.com/zsh-users/antigen) somewhere:

        git clone git@github.com:zsh-users/antigen.git ~/.antigen
        source ~/.antigen/antigen.zsh

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

