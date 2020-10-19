function CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1] =~# '\s'

endfunction

function DefaultColorScheme()
  colorscheme base16-ia-dark
  set background=dark
endfunction
