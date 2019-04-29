"   vundle package manager for vim, used to install the emacs mode for
"   haskell, irrelevant here.
"   https://vimawesome.com/plugin/haskell-mode

" Tab specific option
set tabstop=8                   "A tab is 8 spaces
set expandtab                   "Always uses spaces instead of tabs
set softtabstop=4               "Insert 4 spaces when tab is pressed
set shiftwidth=4                "An indent is 4 spaces
set shiftround                  "Round indent to nearest shiftwidth multiple

"   Comment and Uncomment mulitple lines 
function! Comment()
    silent s/^/\--/
endfunction

function! Uncomment()
    silent s/^\--//
endfunction

map <C-a> :call Comment()<CR>
map <C-b> :call Uncomment()<CR>

"   https://wiki.haskell.org/Vim
"   module sections
let s:width = 80
function! HaskellModuleSection(...)
    let name = 0 < a:0 ? a:1 : inputdialog("Section name: ")
    return  repeat('-', s:width) . "\n"
    \       . "--  " . name . "\n"
    \       . "\n"
endfunction
nmap <silent> --s "=HaskellModuleSection()<CR>gp

"   module headers
function! HaskellModuleHeader(...)
    let name = 0 < a:0 ? a:1 : inputdialog("Module: ")
    let note = 1 < a:0 ? a:2 : inputdialog("Note: ")
    let description = 2 < a:0 ? a:3 : inputdialog("Describe this module: ")
    return  repeat('-', s:width) . "\n"
    \       . "-- | \n"
    \       . "-- Module      : " . name . "\n"
    \       . "-- Note        : " . note . "\n"
    \       . "-- \n"
    \       . "-- " . description . "\n"
    \       . "-- \n"
    \       . repeat('-', s:width) . "\n"
    \       . "\n"
endfunction
nmap <silent> --h "=HaskellModuleHeader()<CR>:0put =<CR>
