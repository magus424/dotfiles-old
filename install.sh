#!/bin/bash

git config --global include.path /home/cgrady/.config/gitconfig

ln -sf ~/.config/bashrc ~/.bashrc
ln -sf ~/.config/bash_profile ~/.bash_profile
ln -sf ~/.config/vim ~/.vim
ln -sf ~/.config/vim/vimrc ~/.vimrc
ln -sf ~/.config/vim/gvimrc ~/.gvimrc

mkdir ~/.config/vim/bundle 2>/dev/null
git clone https://github.com/gmarik/Vundle.vim.git ~/.config/vim/bundle/Vundle.vim
vim +PluginInstall +qa

