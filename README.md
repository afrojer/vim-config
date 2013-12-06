Installation
------------

To install, run

    git clone git://github.com/afrojer/vim-config.git ~/.vim
    cd ~/.vim
    make install

To update the repository, run

    make update

Other Notes
------------

vimrc.mine and gvimrc.mine contain system-specific settings or other settings
that should not be part of a general configuration. Thus, they are not tracked
in the repo. My vimrc.mine and gvim.mine are included as examples.

I have also include my personal vimrc.min file as: vimrc.mine.afrojer. To
install this file you can use:

    make install ME=afrojer
