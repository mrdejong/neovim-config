let g:coc_global_extensions = [
      \ 'coc-pairs',
      \ 'coc-json',
      \ 'coc-vimlsp',
      \ 'coc-explorer',
      \ 'coc-emmet',
      \ 'coc-elixir',
      \ 'coc-clangd',
      \ 'coc-cmake',
      \ 'coc-rls',
      \ 'coc-rust-analyzer'
      \ ]

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1] =~# '\s'
endfunction

