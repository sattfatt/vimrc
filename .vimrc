set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" Plugins go here:
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'mcmartelle/vim-monokai-bold' 
Plugin 'tomasiser/vim-code-dark'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp' : 'powerline/bindings/vim/'}
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Raimondi/delimitMate'
Plugin 'cohama/lexima.vim'



"-----------------


call vundle#end()
filetype plugin indent on

set splitbelow
set splitright
" for navigating splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" for folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za


" for PEP 8 indentation
au BufNewFile,BufRead *.py
	\ set tabstop=4 |
	\ set softtabstop=4 |
	\ set shiftwidth=4 |
	\ set textwidth=79 |
	\ set expandtab |
	\ set autoindent |
	\ set fileformat=unix
" full stack
au BufNewFile,BufRead *.js, *.html, *.css
	\ set tabstop=2 |
	\ set softtabstop=2 |
	\ set shiftwidth=2

au BufNewFile,BufRead *.cs
	\ set tabstop=4 |
	\ set shiftwidth=4 |
	\ set expandtab

"flag unneeded whitespace
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set encoding=utf-8

" python with virtualenv support

"py << EOF
"import os
"import sys
"
"if 'VIRTUAL_ENV' in os.environ:
"  project_base_dir = os.environ['VIRTUAL_ENV']
"  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"  execfile(activate_this, dict(__file__=activate_this))
"EOF


" prettifiy

let python_highlight_all=1
syntax on

if has('gui_running')
	set background=dark
	colorscheme solarized 
else
	colorscheme monokai-bold
endif


call togglebg#map("<F5>")

" nerdtree

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore pyc in nerdtree


set nu

tnoremap <Esc><Esc> <C-\><C-n>


