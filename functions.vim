function! ToggleVerbose()
  if !&verbose
    set verbosefile=~/vim_verbose.log
    set verbose=9
  else
    set verbose=0
    set verbosefile=
  endif
endfunction

function! PromoteToLet()
  :normal! dd
  " :exec '?^\s*it\>'
  :normal! P
  :.s/\(\w\+\) = \(.*\)$/let(:\1) { \2 }/
  :normal ==
endfunction
command! PromoteToLet :call PromoteToLet()

" generates a 'console.log(<word>)'
function! LogUnderCursor()
  :normal! yiw
  :normal! o
  :normal! o
  :normal! iconsole.log(
  :normal! p
  :normal! a)
  :normal ==
  :normal! o
endfunction
command! LogUnderCursor :call LogUnderCursor()

command! GBlame :call Git blame
