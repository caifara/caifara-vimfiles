" make uses real tabs
au FileType make set noexpandtab

" make Python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )
au FileType python set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=79

" autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
" autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

autocmd FileType vim setlocal foldmethod=marker
autocmd filetype javascript.jsx setlocal foldmethod=expr
autocmd FileType javascript setlocal foldmethod=expr
autocmd filetype typescript setlocal foldmethod=expr
autocmd FileType typescript.tsx setlocal foldmethod=expr
autocmd FileType typescriptreact setlocal foldmethod=expr
autocmd FileType ruby setlocal foldmethod=expr

" project specifieke autocommands
augroup projectAutocommands
  autocmd BufNewFile,BufEnter */lichtvis* :let g:turbux_command_prefix = "bin/spring"
  autocmd BufNewFile,BufEnter */brightbook* :let g:turbux_command_prefix = "bin/spring"
  autocmd BufNewFile,BufEnter */wtax* :let g:turbux_command_prefix = "zeus"
augroup END

augroup filetypedetecters
  au BufRead,BufNewFile *.arb set filetype=ruby
  " Thorfile, Rakefile, Vagrantfile and Gemfile are Ruby
  au BufRead,BufNewFile {Gemfile,Guardfile,Rakefile,Vagrantfile,Thorfile,config.ru}    set ft=ruby
augroup END

" https://stackoverflow.com/questions/37552913/vim-how-to-keep-folds-on-save
augroup remember_folds
  autocmd!
  autocmd BufWinLeave *.* mkview
  autocmd BufWinEnter *.* silent! loadview
augroup END

