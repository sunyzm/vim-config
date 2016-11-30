#!/bin/bash

if [ -h "${HOME}/.vimrc" ]; then
    echo "~/.vimrc already exists, to be removed."
    rm ${HOME}/.vimrc
elif [ -f "${HOME}/.vimrc" ]; then
    echo "~/.vimrc already exists."
    mv -v ${HOME}/.vimrc ${HOME}/.vimrc.backup
fi

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ln -s ${DIR}/.vimrc ~/.vimrc

# pre-requisite
# * YouCompleteMe: build-essential cmake python-dev python3-dev clang
sudo apt-get install -y build-essential cmake python-dev python3-dev clang

# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install Vundle Plugins
# Alternatively, launch vim and run :PluginInstall
vim +PluginInstall +qall

# Compile YCM
# * See https://valloric.github.io/YouCompleteMe/
# * Append --gocode-completer --omnisharp-completer --tern-completer, if applicable
~/.vim/bundle/YouCompleteMe/install.py --clang-completer --gocode-completer --tern-completer

