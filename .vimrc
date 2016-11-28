set nocompatible      " be iMproved, required	
filetype off          " required

" to install Vundle, run the following
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" YouCompleteMe
Plugin 'Valloric/YouCompleteMe'

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

call vundle#end()
filetype plugin indent on  " required
" Brief Vundle help
" :PluginList    - lists configured plugins
" :PluginInstall - installs plugins
" :PluginUpdate  - or :PluginInstall! 
" :PluginClean   - confirms removal of unused plugins
" :h vundle for more details.

syntax enable
set number
" set hidden    " See http://usevim.com/2012/10/19/vim101-set-hidden/

" status settings
set laststatus=2
set ruler showcmd showmode

" search settings
set hlsearch incsearch

