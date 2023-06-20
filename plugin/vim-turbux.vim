let g:no_turbux_mappings = 1 " eigen map gebruiken
let g:turbux_command_prefix = ""
let g:turbux_command_cucumber = 'cucumber --require features'

" project specifieke autocommands
augroup projectAutocommands
  autocmd BufNewFile,BufEnter */lichtvis* :let g:turbux_command_prefix = "be"
  autocmd BufNewFile,BufEnter */brightbook* :let g:turbux_command_prefix = "be"
  autocmd BufNewFile,BufEnter */wtax* :let g:turbux_command_prefix = "be"
  autocmd BufNewFile,BufEnter */bib-boeken-platform* :let g:turbux_command_prefix = "be"
augroup END
