#!/bin/bash

if [ -h "${HOME}/.vimrc" ]; then
    echo "~/.vimrc already exists, to be removed."
    rm ${HOME}/.vimrc
elif [ -f "${HOME}/.vimrc" ]; then
    echo "~/.vimrc already exists."
    mv -v ${HOME}/.vimrc ${HOME}/.vimrc.backup
fi

echo "Create symlink ${HOME}/.vimrc -> ${DIR}/.vimrc"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ln -s ${DIR}/.vimrc ${HOME}/.vimrc

# pre-requisite packages
# * git
# * YouCompleteMe: build-essential cmake python-dev python3-dev clang
sudo apt-get install -y git build-essential cmake python-dev python3-dev clang

# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install Vundle Plugins
# Alternatively, launch vim and run :PluginInstall
echo "Install Vundle plugins"
vim +PluginInstall +qall

# Compile YCM
# * See https://valloric.github.io/YouCompleteMe/
# * Append --gocode-completer --omnisharp-completer --tern-completer, if applicable
echo "Compile YouCompleteMe with clang-completer"
${HOME}/.vim/bundle/YouCompleteMe/install.py --clang-completer

