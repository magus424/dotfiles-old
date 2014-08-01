#!/bin/bash

ln -sf ~/.config/bashrc ~/.bashrc
ln -sf ~/.config/bash_profile ~/.bash_profile
ln -sf ~/.config/vim ~/.vim
ln -sf ~/.config/vim/vimrc ~/.vimrc
ln -sf ~/.config/vim/gvimrc ~/.gvimrc
ln -sf ~/.config/tmux.conf ~/.tmux.conf

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qa

