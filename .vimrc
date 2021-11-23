"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
" from https://realpython.com/vim-and-python-a-match-made-in-heaven/#vim-extensions

set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)


" Python Style Indentation
" from https://github.com/vim-scripts/indentpython.vim
Plugin 'vim-scripts/indentpython.vim'


" PEP 8 Linter
Plugin 'nvie/vim-flake8'


" Auto Completion
" from https://github.com/ycm-core/YouCompleteMe
" Error: YouCompleteMe unavailable: requires Vim compiled with Python (3.6.0+) support.
"Bundle 'Valloric/YouCompleteMe'
" YouCompleteMe Customizations
"let g:ycm_autoclose_preview_window_after_completion=1
"map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>




" Folding Blocks of Code
" from https://github.com/tmhedberg/SimpylFold
"Plugin 'tmhedberg/SimpylFold'
" Folding Blocks of Code
" don't need this if using SimplyFold plugin
" Enable folding
"set foldmethod=indent
"set foldlevel=99
" Enable folding with the spacebar
"nnoremap <space> za


" Syntax Highlighting
" from https://github.com/vim-syntastic/syntastic
Plugin 'vim-syntastic/syntastic'
let python_highlight_all=1
syntax on


" Sytnax Color Scheme
" from https://github.com/jnurmine/Zenburn
Plugin 'jnurmine/Zenburn'
if has('gui_running')
  set background=dark
"  colorscheme solarized
else
  colorscheme zenburn
endif


" File Tree
" from https://github.com/preservim/nerdtree
Plugin 'scrooloose/nerdtree' 


" Tabs for File Tree (NerdTree)
" from https://github.com/jistr/vim-nerdtree-tabs
Plugin 'jistr/vim-nerdtree-tabs'


" Hide *.pyc Files
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree


" Search For Anything
" demo video https://www.youtube.com/watch?v=9XrHk3xjYsw
Plugin 'kien/ctrlp.vim'


" Git Commands
" from https://github.com/tpope/vim-fugitive
" demo video http://vimcasts.org/episodes/fugitive-vim---a-complement-to-command-line-git/
Plugin 'tpope/vim-fugitive'


" Doesn't Work
" BreadCrumb Bar at Bottom
" from https://github.com/powerline/powerline
" docs https://powerline.readthedocs.io/en/latest/
" Error: You need vim compiled with Python 2.6, 2.7 or 3.2 and later support
" for Powerline to work. Please consult the documentation for more
" details.
" Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}


" Comments
" from https://vimawesome.com/plugin/comments-vim-back-to-december
Bundle "sudar/comments.vim"
" Plugin "sudar/comments.vim"

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" End of Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Split Window Navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" PEP8
au BufNewFile,BufRead *.py set tabstop=4
au BufNewFile,BufRead *.py set softtabstop=4
au BufNewFile,BufRead *.py set shiftwidth=4
au BufNewFile,BufRead *.py set textwidth=79
au BufNewFile,BufRead *.py set expandtab
au BufNewFile,BufRead *.py set autoindent
au BufNewFile,BufRead *.py set fileformat=unix


" Frontend Work Indentations
au BufNewFile,BufRead *.js, *.html, *.css set tabstop=2
au BufNewFile,BufRead *.js, *.html, *.css set softtabstop=2
au BufNewFile,BufRead *.js, *.html, *.css set shiftwidth=2


" Doesn't Work
" Flagging Unnecessary Whitespace
" Error: detected while processing BufRead Autocommands for "*.py":
" E518: Unknown option: set 
" E28: No such highlight group name: BadWhitespace
" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/


" UTF-8 Encoding
set encoding=utf-8


" Doesn't work
" Python Virtual Environment Support
"python << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
"  project_base_dir = os.environ['VIRTUAL_ENV']
"  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"  execfile(activate_this, dict(__file__=activate_this))
"EOF


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" wmcooper2's Preferences
" Relative Line Numbers
set relativenumber

"   ^N/^P - move to next/previous file
"   overrides: move to next/previous line
noremap <C-N> :next<CR>
noremap <C-P> :previous<CR>

"   Buffer movements, page 85 of Practical Vim 2nd ed
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

"   Searching through vimgrep highlights
"   http://vimcasts.org/episodes/search-multiple-files-with-vimgrep/
nnoremap <silent> [q :cprev<CR>
nnoremap <silent> ]q :cnext<CR>
nnoremap <silent> [Q :cfirst<CR>
nnoremap <silent> ]Q :clast<CR>

"   no swapfile to keep everything in the buffer
set noswapfile

"   Disable arrow keys while using vim.
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

"   move lines up/down one line
nnoremap <leader>d ddp
nnoremap <leader>u ddkkp

"   make word SHOUTY case
nnoremap <S-u> gUaw

"   delete line
inoremap <c-d> <esc>ddi

"   clear line, enter imode
nnoremap -c dd0i

"   delete all trailing whitespaces
"   https://www.youtube.com/watch?v=CXiftX7vufo
function! DeleteTrailingWS()
    execute "normal! mz"
    %s/\s\+$//ge
    exe "normal! `z"
endfunction


"   abbreviations (mis-spellings)
"   doesn't work with copypasta
iabbrev adn and
iabbrev waht what
iabbrev tehn then
iabbrev teh the
"   iabbrev @@ https://github.com/wmcooper2
"   iabbrev copyright 'Copyright 2019 Wandal Cooper rights reserved.'

"   put word in single/double quotes
"   http://learnvimscriptthehardway.stevelosh.com/chapters/09.html
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel

"   avoid using escape key in imode
"   http://learnvimscriptthehardway.stevelosh.com/chapters/10.html
inoremap jk <esc>
inoremap <esc> <nop>

"   Comment and Uncomment mulitple lines in Python
function! Comment()
    silent s/^/\# /
endfunction

function! Uncomment()
    silent s/^\# //
endfunction

nnoremap <C-a> :call Comment()<CR>
nnoremap <C-s> :call Uncomment()<CR>






" syntax on
" set shiftwidth=4
" set softtabstop=4
" set tabstop=4
" set relativenumber
" set expandtab
