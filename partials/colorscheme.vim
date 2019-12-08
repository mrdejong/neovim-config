let s:bg_color = $NVIM_COLORSCHEME_BG ==? 'light' ? 'light' : 'dark'
set termguicolors
silent exe 'set background='.s:bg_color
set synmaxcol=300

let g:gruvbox_italic = 1
let g:gruvbox_sign_column = 'bg0'
let g:gruvbox_invert_selection = 0

filetype plugin indent on
syntax on
silent! colorscheme gruvbox

augroup vimrc_colorscheme
  autocmd!
  autocmd Syntax,ColorScheme * call s:set_gruvbox_colors()
  autocmd BufEnter * :syntax sync fromstart
augroup END

function! s:set_gruvbox_colors() abort
endfunction
