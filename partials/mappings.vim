nmap <leader>c gcc
xmap <leader>c gc

map <c-s> :w<CR>
imap <c-s> <C-o>:w<cr>
nnoremap <Leader>s :w<cr>
nnoremap <Leader>w :w<cr>

nmap ; :

nnoremap <Leader>v <C-w>v

nnoremap gh <C-w>h
nnoremap gj <C-w>j
nnoremap gk <C-w>k
nnoremap gl <C-w>l

inoremap jj <Esc>
inoremap jk <Esc>
inoremap jw <Esc>:w<cr>

nnoremap Y y$

vnoremap <C-c> "+y
inoremap <C-v> <Esc>"+p

vnoremap J :m '>+1<cr>gv=gv
vnoremap K :m '<-2<cr>gv=gv

nnoremap <silent><Leader>q :call <sid>close_buffer()<cr>
nnoremap <silent><Leader>Q :call <sid>close_buffer(v:true)<cr>

nnoremap <leader><tab> <c-^>

xnoremap <s-tab> <gv
xnoremap <tab> >gv

nnoremap _ <c-w>5<
nnoremap + <c-w>5>

map Q <Nop>

function! s:close_buffer(...) abort
  if &buftype !=? ''
    return execute('q!')
  endif
  let l:windowCount = winnr('$')
  let l:totalBuffers = len(getbufinfo({ 'buflisted': 1 }))
  let l:noSplits = l:windowCount ==? 1
  let l:bang = a:0 > 0 ? '!' : ''
  if l:totalBuffers > 1 && l:noSplits
    let l:command = 'bp'
    if buflisted(bufnr('#'))
      let l:command .= '|bd'.l:bang.'#'
    endif
    return execute(l:command)
  endif
  return execute('q'.l:bang)
endfunction
