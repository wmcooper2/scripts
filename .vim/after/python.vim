"   tabs and spaces
set tabstop=4 
set expandtab 
set shiftwidth=4
set autoindent

"   Comment and Uncomment mulitple lines 
function! Comment()
    silent s/^/\# /
endfunction

function! Uncomment()
    silent s/^\# //
endfunction

nnoremap <C-a> :call Comment()<CR>
nnoremap <C-b> :call Uncomment()<CR>

"   module sections
let s:width = 80
function! PythonModuleSection(...)
    let name = 0 < a:0 ? a:1 : inputdialog("Section name: ")
    return  repeat('-', s:width) . "\n"
    \       . "--  " . name . "\n"
    \       . "\n"
endfunction
nnoremap <silent> --s "=PythonModuleSection()<CR>gp


"   let s:pythontools = '/Users/wandalcooper/.vim/pythontools/function.txt'
"   insert function template block
function! Pfunct()
    execute ':read /Users/wandalcooper/.vim/pythontools/function.txt'
endfunction
nnoremap <leader>p :call Pfunct()<CR>

"   insert simple header
function! Phead()
    execute ':read /Users/wandalcooper/.vim/pythontools/header.txt'
endfunction
nnoremap <leader>h :call Phead()<CR>

"   insert simple footer
function! Pfoot()
    execute ':read /Users/wandalcooper/.vim/pythontools/footer.txt'
endfunction
nnoremap <leader>f :call Pfoot()<CR>
