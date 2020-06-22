nnoremap <silent><C-p> :GFiles<cr>
nnoremap <silent><leader>b :Buffers<cr>

function! s:goto_def(lines) abort
  silent! exe 'e +BTags'.a:lines[0]
  call timer_start(10, {-> execute('startinsert') })
endfunction

function! s:goto_line(lines) abort
  silent! exe 'e '.a:lines[0]
  call timer_start(10, {-> feedkeys(':') })
endfunction

let g:fzf_action = {
      \ 'ctrl-t': 'tab split',
      \ 'ctrl-x': 'split',
      \ 'ctrl-v': 'vsplit',
      \ '@': function('s:goto_def'),
      \ ':': function('s:goto_line')
      \ }
