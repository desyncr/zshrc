.zshrc
==========

Repository to save my custom ZSH settings and themes.

Install
-------
* Install [Antigen](https://github.com/zsh-users/antigen) somewhere:

        mkdir ~/.antigen/ && cd ~/.antigen/
        curl https://raw.github.com/zsh-users/antigen/master/antigen.zsh > antigen.zsh

* Clone this repo somewhere:

        cd ~
        git clone git@github.com:asphxia/zsh.git

* Hook it into .zshrc

        echo "export ANTIGEN=~/.antigen/" >> ~/.zshrc # exports Antigen path
        echo "source ~/zsh/bootstrap.zsh" >> ~/.zshrc # loads out stuff

* Alternatively, use my .zshrc:

        mv ~/.zshrc ~/.zshrc.$(date +%s)
        ln -s ~/zsh/.zshrc

* Restart zsh and done!


Optional
--------

* Install autojump

        git clone git://github.com/joelthelion/autojump.git
        cd autojump
        ./install.sh


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



## Contact and Feedback

If you'd like to contribute to the project or file a bug or feature request, please visit [the project page][1].

## License

The project is licensed under the [GNU GPL v3][2] ([tldr][3]) license. Which means you're allowed to copy, edit, change, hack, use all or any part of this project *as long* as all of the changes and contributions remains under the same terms and conditions.

  [1]: https://github.com/asphxia/zshrc/
  [2]: http://www.gnu.org/licenses/gpl.html
  [3]: http://www.tldrlegal.com/license/gnu-general-public-license-v3-(gpl-3)

