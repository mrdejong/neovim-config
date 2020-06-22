augroup Cursor
  autocmd InsertEnter * set cursorcolumn!
  autocmd InsertLeave * set cursorcolumn
augroup END

augroup vimrc
  autocmd!
  autocmd BufWritePre * call s:strip_trailing_whitespace()
  autocmd InsertEnter * set nocul
  autocmd InsertLeave * set cul
  autocmd TermOpen * setlocal nonumber norelativenumber
augroup END

function! s:strip_trailing_whitespace()
  if &modifiable
    let l:l = line('.')
    let l:c = col('.')
    call execute('%s/\s\+$//e')
    call histdel('/', -1)
    call cursor(l:l, l:c)
  endif
endfunction
