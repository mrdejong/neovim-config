call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'chriskempson/base16-vim'
Plug 'junegunn/fzf', {'do': { -> fzf#install() }}
Plug 'junegunn/fzf.vim'
Plug 'elixir-lang/vim-elixir'
Plug 'tpope/vim-commentary'
Plug 'chrisbra/vim-diff-enhanced'
Plug 'justinmk/vim-syntax-extra'
Plug 'rust-lang/rust.vim'

call plug#end()
