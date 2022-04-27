let g:neoformat_enabled_ruby = ['rufo']
" let g:neoformat_enabled_ruby = ['rubocop']

augroup fmt
  autocmd!
  " autocmd BufWritePre * undojoin | Neoformat
  autocmd BufWritePre * Neoformat
augroup END
