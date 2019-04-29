"   tabs and spaces
set tabstop=4 
set expandtab 
set shiftwidth=4
set autoindent
set number
set numberwidth=1

"   Comment line
function! Comment()
"    <esc> <S-i><!-- <esc> <S-$>i --><esc>
"    silent s\<esc> <S-i><!-- <esc> <S-$>i --><esc>
    silent s/^/\<!-- /
"    silent s/g_/ -->/
    <insert>
endfunction

function! Uncomment()
    silent s/^\# //
endfunction

nmap <C-a> :call Comment()<CR>
map <C-b> :call Uncomment()<CR>

"   module sections
let s:width = 80
"   function! PythonModuleSection(...)
"    let name = 0 < a:0 ? a:1 : inputdialog("Section name: ")
"    return  repeat('-', s:width) . "\n"
"    \       . "--  " . name . "\n"
"    \       . "\n"
"endfunction
"nmap <silent> --s "=PythonModuleSection()<CR>gp


