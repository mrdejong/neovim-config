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

" Normal mappings
nnoremap <leader>w :w<cr>
nnoremap ; :

nnoremap gh <C-w>h
nnoremap gj <C-w>j
nnoremap gk <C-w>k
nnoremap gl <C-w>l

nnoremap <leader>e :CocCommand explorer<cr>
nnoremap <leader>f :CocCommand explorer<cr>

nnoremap <silent><C-p> :GFiles<cr>
nnoremap <silent><leader>b :Buffers<cr>

" Visual mappings
xmap ga <Plug>(EasyAlign)

" Terminal mappings
if has('nvim')
  tnoremap <Esc> <C-\><C-n>
  tnoremap <C-j> <C-\><C-n>
  tnoremap <C-v><Esc> <Esc>

  autocmd! FileType fzf tnoremap <buffer> <esc> <c-c>
endif
