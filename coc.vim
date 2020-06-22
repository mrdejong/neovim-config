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

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "<C-g>u\<CR>"
endif

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1] =~# '\s'
endfunction

