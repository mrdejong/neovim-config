set title
set number
set relativenumber
set noshowmode
set smartcase
set ignorecase
set mouse=a
set showmatch
set nostartofline
set timeoutlen=1000 ttimeoutlen=0
set fileencoding=utf-8
set nowrap
set linebreak
set listchars=tab:│\ ,trail:·                                                   "Set trails for tabs and spaces"
set list
set lazyredraw
set hidden
set conceallevel=2 concealcursor=i
set splitright
set splitbelow
set inccommand=nosplit
set exrc
set secure
set grepprg=rg\ --smart-case\ --vimgrep                                         "Use ripgrep for grepping
set tagcase=smart                                                               "Use smarcase for tags
set updatetime=300                                                              "Cursor hold timeout
set shortmess+=c                                                                "Disable completion menu messages in command line
set undofile                                                                    "Keep undo history across sessions, by storing in file
set noswapfile                                                                  "Disable creating swap file
set nobackup                                                                    "Disable saving backup file
set nowritebackup                                                               "Disable writing backup file
set fillchars+=vert:│                                                           "Use vertical line for vertical split
set breakindent                                                                 "Preserve indent on line wrap
set nofoldenable                                                                "Disable folding by default
set colorcolumn=80                                                              "Highlight 80th column for easier wrapping
set foldmethod=syntax                                                           "When folding enabled, use syntax method
set diffopt+=vertical

set smarttab
set cindent
set tabstop=2
set shiftwidth=2
set expandtab

set shortmess+=c
set signcolumn=yes

set cursorline
set cursorcolumn

set clipboard=unnamed,unnamedplus                                                      " Make sure that yank, also yanks to the clipboard

set statusline=\%r%F\ \ \ \ \LINE:\ %l/%L/%P\ TIME:\ %{strftime('%c')}          " Statusline data, work in progress.

syntax enable
