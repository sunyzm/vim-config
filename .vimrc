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

" NERDTree
Plugin 'scrooloose/nerdtree'

" netrw
Plugin 'vim-scripts/netrw.vim'

" CtrlP
Plugin 'kien/ctrlp.vim'

" Syntastic
Plugin 'vim-syntastic/syntastic.git'

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" color schemes
" * Mustang
Plugin 'croaker/mustang-vim'
" * Solarized
" Plugin 'altercation/vim-colors-solarized'
" * Minimalist
" Plugin 'dikiaap/minimalist'

call vundle#end()
filetype plugin indent on  " required
" Brief Vundle help
" :PluginList    - lists configured plugins
" :PluginInstall - installs plugins
" :PluginUpdate  - or :PluginInstall!
" :PluginClean   - confirms removal of unused plugins
" :h vundle for more details.

nnoremap ; :
let mapleader="," " change the mapleader from '\' to ','

" quickly reload the vimrc file
nmap <silent> <leader>sv :so $MYVIMRC<CR>


""""""""""""""""""""""""
" colorscheme settings "
""""""""""""""""""""""""
syntax enable

" set background=dark

if &t_Co >= 256 || has("gui_running")
  colorscheme mustang
endif


""""""""""""""""""
" basic settings "
""""""""""""""""""
set number
set hidden          " See http://usevim.com/2012/10/19/vim101-set-hidden/
set nowrap
set autoindent copyindent
set tabstop=4 shiftwidth=4 softtabstop=4
set shiftround      " use muliple of shiftwidth when indenting with < and >
set smarttab        " insert tabs on the start of a line according to shiftwidth
set showmatch       " set show matching parenthesis
set title           " change the terminal's title
set visualbell      " don't beep
set backspace=indent,eol,start " allow backspacing over everything in insert
set viewoptions=cursor,folds
set hlsearch incsearch ignorecase smartcase
" set cursorline
" set clipboard=unnamed

" Expand tab for python code
autocmd filetype python set expandtab

set laststatus=2
set ruler showcmd showmode
set colorcolumn=+1
highlight ColorColumn ctermbg=darkgrey

" Ctrl+L redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohlsearch<CR><C-l>

" use <F2> to toggle paste mode to avoid cascading indents
set pastetoggle=<F2>

" highlight whitespaces
set list
" set listchars=tab:>.,trail:.,extends:#,nbsp:.
set list listchars=tab:»\ ,trail:°


""""""""""""""""""""
" plugins settings "
""""""""""""""""""""
" YCM settings
let g:ycm_server_python_interpreter = '/usr/bin/python'

" NERDTree settings
map <C-n> :NERDTreeToggle<CR>	" open NERDTree with Ctrl+n
" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" CtrlP settings
set runtimepath^=~/.vim/bundle/ctrlp.vim
" Remember to run :helptags ~/.vim/bundle/ctrlp.vim/doc

" syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

