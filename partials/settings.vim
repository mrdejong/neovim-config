set title
set number
set relativenumber
set noshowmode
set gdefault
set cursorline
set smartcase
set ignorecase
set mouse=a
set showmatch
set nostartofline
set timeoutlen=1000 ttimeoutlen=0
set fileencoding=utf-8
set wrap
set linebreak
set listchars=tab:>\ ,trail:·
set list
set lazyredraw
set hidden
set conceallevel=2 concealcursor=i
set splitright
set splitbelow
set path+=**
set inccommand=nosplit
set exrc
set secure
" set grepprg=rg\ --vimgrep
set tagcase=smart
set updatetime=300
set shortmess+=c
set undofile
set noswapfile
set nobackup
set nowritebackup

set breakindent
set smartindent
set expandtab
set shiftwidth=2
set nofoldenable
set colorcolumn=80
set foldmethod=syntax
set diffopt+=vertical

set scrolloff=8
set sidescrolloff=15
set sidescroll=5
set pyxversion=3

let &t_SI.="\e[5 q"
let &t_SR.="\e[4 q"
let &t_EI.="\e[1 q"

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu | set rnu | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave * if &nu | set nornu | endif
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
