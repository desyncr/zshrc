ZSH-CUSTOM
==========

Repository to save my custom ZSH settings and themes.

Install
-------
* Install [Antigen](https://github.com/zsh-users/antigen) somewhere:

        cd ~/antigen/
        curl https://raw.github.com/zsh-users/antigen/master/antigen.zsh > antigen.zsh

* Clone the repo somewhere:

        cd ~
        git clone git@github.com:asphxia/zsh-custom.git
        export ZSH_CUSTOM=~/zsh-custom``

* Hook it into .zshrc

        echo "export ANTIGEN=(path to antigen)" >> ~/.zshrc # exports Antigen path
        echo "source $ZSH_CUSTOM/bootstrap.zsh" >> ~/.zshrc # loads out stuff

* If you run into problems with themes or the prompt:

        sed -i "s/prompt /#prompt /g" ~/.zshrc

Configure
---------

Check ``bootstrap.zsh`` for examples and default configuration.

Customize
-------
``bootstrap.zsh`` is reponsible for loading any custom script such as ``functions.sh``, ``aliases.sh`` and any custom library.

The files ``functions.sh`` and ``aliases.sh`` holds any custom function and aliases respectibly.

Custom themes are located at ``themes`` directory . Custom libraries are located at ``lib`` directory.



## Contact and Feedback

If you'd like to contribute to the project or file a bug or feature request, please visit [the project page][1].

## License

The project is licensed under the [GNU GPL v3][2] ([tldr][3]) license. Which means you're allowed to copy, edit, change, hack, use all or any part of this project *as long* as all of the changes and contributions remains under the same terms and conditions.

  [1]: https://github.com/asphxia/dumpr/
  [2]: http://www.gnu.org/licenses/gpl.html
  [3]: http://www.tldrlegal.com/license/gnu-general-public-license-v3-(gpl-3)
  
