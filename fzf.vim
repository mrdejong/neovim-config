set rtp+=~/.fzf

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

command! -bang -nargs=* F call fzf#vim#grep(g:rg_command .shellescape(<q-args>), 1, <bang>0)

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
