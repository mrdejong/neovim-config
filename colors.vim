set termguicolors
let base16colorspace=256

let s:config_file = expand('~/.config/base16')

if filereadable(s:config_file)
  let s:config = readfile(s:config_file, '', 2)

  if s:config[1] =~# '^dark\|light$'
    execute 'set background=' . s:config[1]
  else
    echoerr 'Bad background ' . s:config[1] . ' in ' . s:config_file
    " Give a error and set the default
    call DefaultColorScheme()
  endif

  if filereadable(expand('~/.vim/plugged/base16-vim/colors/base16-' . s:config[0] . '.vim'))
    execute 'colorscheme base16-' . s:config[0]
  else
    echoerr 'Bad scheme ' . s:config[0] . ' in ' . s:config_file
    " Give a error and set the default
    call DefaultColorScheme()
  endif
else
  " Will only be used when the file `$HOME/.config/base16` does not exist
  call DefaultColorScheme()
endif


