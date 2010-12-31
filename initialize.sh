#!/bin/bash

dir=`pwd`
if [ -d ~/.config/fish ]
then
  ln -sf $dir/config.fish ~/.config/fish/
fi

ln -sf $dir/vim ~/.vim
ln -sf $dir/vim/vimrc ~/.vimrc
ln -sf $dir/vim/gvimrc ~/.gvimrc

ln -sf $dir/emacs ~/.emacs
ln -sf $dir/emacs.d ~/.emacs.d

ln -sf $dir/bash_profile ~/.bash_profile

ln -sf $dir/vimperatorrc ~/.vimperatorrc
