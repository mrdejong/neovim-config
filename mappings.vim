let mapleader = ","

" Insert mappings
inoremap jk <esc>
inoremap jw <esc>:w<cr>
inoremap jl <esc>la
inoremap jL <esc>$a
inoremap jo <esc>o
inoremap jO <esc>O
inoremap j; <esc>$a;<esc>
inoremap j: <esc>$a;<esc>o

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
endif

" Normal mappings
nnoremap <leader>w :w<cr>
nnoremap ; :

nnoremap gh <C-w>h
nnoremap gj <C-w>j
nnoremap gk <C-w>k
nnoremap gl <C-w>l

nnoremap <leader>e :CocCommand explorer<cr>
nnoremap <leader>f :CocCommand explorer<cr>

nnoremap <silent><C-p> :Files<cr>
nnoremap <silent><leader>b :Buffers<cr>

autocmd! FileType coc-explorer nnoremap <buffer> gl <C-w>l

" Visual mappings
xmap ga <Plug>(EasyAlign)

" Terminal mappings
if has('nvim')
  tnoremap <Esc> <C-\><C-n>
  tnoremap <C-j> <C-\><C-n>
  tnoremap <C-v><Esc> <Esc>

  autocmd! FileType fzf tnoremap <buffer> <esc> <c-c>
endif
