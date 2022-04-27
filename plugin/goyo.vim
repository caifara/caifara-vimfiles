function! Vimroom()
  " au BufWinEnter * set nonumber

  NumbersDisable

  set linebreak
  set nonumber
  set wrap
  set norelativenumber
  Goyo
endfunction

command Vimroom call Vimroom()
command WriteRoom call Vimroom()
