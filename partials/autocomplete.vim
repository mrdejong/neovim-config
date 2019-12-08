set completeopt-=preview
set pumheight=15

augroup vimrc_autocomplete
  autocmd CursorHold * silent call CocActionAsync('highlight')
  autocmd CursorHoldI * call CocActionAsync('showSignatureHelp')
augroup END

let g:coc_user_config ={
      \ 'diagnostic.enable': v:false,
      \ 'prettier.printWidth': 100,
      \ 'prettier.singleQuote': v:true
      \ }

let g:coc_global_extensions = [
      \ 'coc-tag',
      \ 'coc-css',
      \ 'coc-html',
      \ 'coc-json',
      \ 'coc-pyls',
      \ 'coc-jest',
      \ 'coc-prettier',
      \ 'coc-tsserver',
      \ 'coc-snippets',
      \ 'coc-vimlsp',
      \ ]

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
imap <expr> <CR> pumvisible() ? "\<C-y>" : "<Plug>delimitMateCR"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
vmap <leader>lf <Plug>(coc-format-selected)
nmap <leader>lf <Plug>(coc-format-selected)
nmap <leader>lF <Plug>(coc-format)
inoremap <silent><C-Space> <C-x><C-o>

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1] =~# '\s'
endfunction

set wildoptions=pum
set wildignore=*.o,*.obj,*~
set wildignore+=*.git*
set wildignore+=*vim/backups*
set wildignore+=*node_modules*
