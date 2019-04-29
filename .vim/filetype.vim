" filetype detection
if exists("did_load_filetypes")
  finish
endif
augroup filetypedetect
  au! BufNewFile,BufRead *.py setf python
  au! BufNewFile,BufRead *.hs setf Haskell
  au! BufNewFile,BufRead *.hs setf html
augroup END
