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

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" Solarized colors
Plugin 'altercation/vim-colors-solarized'

" Mustang colors
Plugin 'croaker/mustang-vim'

" Google Primary colors
Plugin 'google/vim-colorscheme-primary'

call vundle#end()
filetype plugin indent on  " required
" Brief Vundle help
" :PluginList    - lists configured plugins
" :PluginInstall - installs plugins
" :PluginUpdate  - or :PluginInstall!
" :PluginClean   - confirms removal of unused plugins
" :h vundle for more details.

" key mappings
nnoremap ; :
let mapleader="," " change the mapleader from '\' to ','

" quickly reload the vimrc file
nmap <silent> <leader>sv :so $MYVIMRC<CR>

syntax on
set background=dark

" colorschemes settings
" colorscheme solarized
" let g:solarized_termcolors=256

if &t_Co >= 256 || has("gui_running")
   colorscheme mustang
endif

set number
set hidden    " See http://usevim.com/2012/10/19/vim101-set-hidden/
set nowrap
set autoindent copyindent
set tabstop=4 shiftwidth=4
set shiftround    " use muliple of shiftwidth when indenting with < and >
set smarttab    " insert tabs on the start of a line according to shiftwidth
set showmatch    " set show matching parenthesis
set title    " change the terminal's title
set visualbell    " don't beep
set backspace=indent,eol,start " allow backspacing over everything in insert
set viewoptions=cursor,folds
" set cursorline
" set clipboard=unnamed

set expandtab
" autocmd filetype python set expandtab

" statusline settings
set laststatus=2
set ruler showcmd showmode
set colorcolumn=+1
highlight ColorColumn ctermbg=darkgrey

" search settings
set hlsearch incsearch ignorecase smartcase

" Ctrl+L redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohlsearch<CR><C-l>

" use <F2> to toggle paste mode to avoid cascading indents
set pastetoggle=<F2>

" highlight whitespaces
set list
" set listchars=tab:>.,trail:.,extends:#,nbsp:.
set list listchars=tab:»\ ,trail:°

" YCM settings
let g:ycm_server_python_interpreter = '/usr/bin/python'

" NERDTree settings
map <C-n> :NERDTreeToggle<CR>	" open NERDTree with Ctrl+n
" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" CtrlP settings
set runtimepath^=~/.vim/bundle/ctrlp.vim
" Remember to run :helptags ~/.vim/bundle/ctrlp.vim/doc
