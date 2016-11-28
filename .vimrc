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

" NerdTree
Plugin 'scrooloose/nerdtree'

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
" Ctrl+l redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohlsearch<CR><C-l>

" YCM settings
let g:ycm_server_python_interpreter = '/usr/bin/python'

" NERDTree settings
map <C-n> :NERDTreeToggle<CR>	" open NERDTree with Ctrl+n
" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
