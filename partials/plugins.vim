function! s:packager_init() abort
  packadd vim-packager
  call packager#init()
  call packager#add('kristijanhusak/vim-packager', { 'type': 'opt' })
  call packager#add('kristijanhusak/vim-js-file-import', { 'do': 'npm install', 'type': 'opt' })
  call packager#add('kristijanhusak/defx-git', { 'type': 'opt' })
  call packager#add('kristijanhusak/defx-icons', { 'type': 'opt' })
  call packager#add('mgedmin/python-imports.vim', { 'type': 'opt' })
  call packager#add('phpactor/phpactor', { 'do': 'composer install --no-dev', 'type': 'opt' })
  call packager#add('Shougo/defx.nvim')
  call packager#add('Raimondi/delimitMate')
  call packager#add('tpope/vim-commentary')
  call packager#add('tpope/vim-surround')
  call packager#add('tpope/vim-repeat')
  call packager#add('tpope/vim-fugitive')
  call packager#add('airblade/vim-gitgutter')
  call packager#add('editorconfig/editorconfig-vim')
  call packager#add('airblade/vim-gitgutter')
  call packager#add('junegunn/fzf', { 'do': './install --all && ln -sf $(pwd) ~/.fzf'})
  call packager#add('junegunn/fzf.vim')
  call packager#add('ludovicchabant/vim-gutentags')
  call packager#add('elixir-lang/vim-elixir')
  call packager#add('slashmili/alchemist.vim')
  call packager#add('w0rp/ale')
  call packager#add('haya14busa/vim-asterisk')
  call packager#add('osyo-manga/vim-anzu')
  call packager#add('dyng/ctrlsf.vim')
  call packager#add('neoclide/coc.nvim', { 'branch': 'release' })
  call packager#add('gruvbox-community/gruvbox')
  call packager#add('vim-airline/vim-airline')
  call packager#add('vim-airline/vim-airline-themes')
endfunction

command! -nargs=0 PackagerInstall call s:packager_init() | call packager#install()
command! -bang PackagerUpdate call s:packager_init() | call packager#update({ 'force_hooks': '<bang>' })
command! PackagerClean call s:packager_init() | call packager#clean()
command! PackagerStatus call s:packager_init() | call packager#status()

let g:mapleader = ','

augroup packager_filetype
  autocmd!
  autocmd FileType javascript,javascriptreact packadd vim-js-file-import
  autocmd FileType defx packadd defx-git | packadd defx-icons
  autocmd FileType php packadd phpactor
augroup END

nnoremap <silent><Leader><space> :AnzuClearSearchStatus<BAR>:noh<cr>
nmap n <Plug>(anzu-n)zz
nmap N <Plug>(anzu-N)zz
map * <Plug>(asterisk-z*)<Plug>(anzu-update-search-status)
map # <Plug>(asterisk-z#)<Plug>(anzu-update-search-status)
map g* <Plug>(asterisk-gz*)<Plug>(anzu-update-search-status)
map g# <Plug>(asterisk-gz#)<Plug>(anzu-update-search-status)

nmap <Leader>f <Plug>CtrlSFPrompt
vmap <Leader>F <Plug>CtrlSFVwordPath
nmap <Leader>F <Plug>CtrlSFCwordPath

nnoremap <Leader>R :ALEFix<cr>
nnoremap [e :ALEPrevious<cr>
nnoremap ]e :ALENext<cr>

nnoremap <silent> <Leader>G :vert G<cr>

let g:ctrlsf_auto_close = 0
let g:ctrlsf_mapping = {'vsplit': 's'}
let g:ctrlsf_search_mode = 'sync'

let g:ale_linters = {}
let g:ale_linters.javascript = ['eslint']
let g:ale_linters.elixir = ['elixir-ls', 'credo']

let g:ale_virtualtext_cursor = 1
let g:ale_virtualtext_prefix = '  > '
let g:ale_javascript_prettier_options = '--print-width 120'
let g:ale_lint_delay = 400
let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'

let g:ale_fixers = {'*': ['remove_trailing_lines', 'trim_whitespace']}
let g:ale_fixers.elixir = ['mix format']
let g:ale_fixers.javascript = ['prettier', 'eslint']

let g:ale_elixir_elixir_ls_release = 'C:/Users/Alexander/programming/elixir-ls/rel'

let g:delimitMate_expand_cr = 1
