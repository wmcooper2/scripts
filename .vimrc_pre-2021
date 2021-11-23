"   to un-map keys, use; unmap <key>

"   vundle, vim bundle pacakge manager
set nocompatible              " be iMproved, required
filetype off                  " required

"   set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"   alternatively, pass a path where Vundle should install plugins
"   call vundle#begin('~/some/path/here')
"   let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"   The following are examples of different formats supported.
"   Keep Plugin commands between vundle#begin/end.
"   plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
"   plugin from http://vim-scripts.org/vim/scripts.html
"   Plugin 'L9'
"   Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
"   git repos on your local machine (i.e. when working on your own plugin)
"   Plugin 'file:///home/gmarik/path/to/plugin'
"   The sparkup vim script is in a subdirectory of this repo called vim.
"   Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"   Install L9 and avoid a Naming conflict if you've already installed a
"   different version somewhere else.
"   Plugin 'ascenator/L9', {'name': 'newL9'}
"   for emacs?
Plugin 'haskell/haskell-mode'

"   All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"   To ignore plugin indent changes, instead use:
"   filetype plugin on
"
"   Brief help
"   :PluginList       - lists configured plugins
"   :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
"   :PluginSearch foo - searches for foo; append `!` to refresh local cache
"   :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
"   see :h vundle for more details or wiki for FAQ
"   Put your non-Plugin stuff after this line




"   my preferences below this line
"   auto file type detection for changing settings
augroup py_haskell
  autocmd FileType Haskell source ~/.vim/after/haskell.vim
  autocmd FileType python source ~/.vim/after/python.vim
  autocmd FileType html source ~/.vim/after/html.vim
"  autocmd FileType html source ~/.vim/after/html.vim
"  autocmd FileType vim source ~/.vim/after/vims.vim
augroup END

"   prefix keys
"   http://learnvimscriptthehardway.stevelosh.com/chapters/06.html
let mapleader = "-"
let maplocalleader = "\\"

"   quick edit/source of .vimrc file
"   http://learnvimscriptthehardway.stevelosh.com/chapters/06.html
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>



"   no swapfile to keep everything in the buffer
set noswapfile

"   invisible formatting
"   nnoremap <leader>l :set list!<CR>

"   set background=dark
syntax on
set hlsearch

"   tabs and spaces
set tabstop=4
set expandtab
set shiftwidth=4
set autoindent

"   line numbers
set number
set numberwidth=1
set relativenumber

"   Curt's recommendation
"   s/S - save current/save all in this section for lack of better place
"   overrides: s/S as duplicates of cl/cc
"   noremap s :w<CR>
"   noremap S :wa<CR>

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

"   make word SHOUTY case
"   inoremap <c-u> <esc>gUawi

"   delete line
inoremap <c-d> <esc>ddi

"   clear line, enter imode
nnoremap -c dd0i

"   ASCII art
"   echom "(>^.^<)"

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

