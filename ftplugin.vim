" make uses real tabs
au FileType make set noexpandtab

" make Python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )
au FileType python set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=79

" autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
" autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

autocmd FileType vim setlocal foldmethod=marker
autocmd Filetype javascript.jsx setlocal foldmethod=expr
autocmd FileType javascript setlocal foldmethod=expr
autocmd Filetype typescript setlocal foldmethod=expr
autocmd FileType typescript.tsx setlocal foldmethod=expr
autocmd FileType typescriptreact setlocal foldmethod=expr
autocmd FileType ruby setlocal foldmethod=expr
autocmd FileType yaml setlocal foldmethod=expr
autocmd FileType json setlocal foldmethod=syntax

augroup filetypedetecters
  au BufRead,BufNewFile *.arb set filetype=ruby
  " Thorfile, Rakefile, Vagrantfile and Gemfile are Ruby
  au BufRead,BufNewFile {Gemfile,Guardfile,Rakefile,Vagrantfile,Thorfile,config.ru}    set ft=ruby
augroup END

" https://stackoverflow.com/questions/37552913/vim-how-to-keep-folds-on-save
" added edit to make sure we fold after loading completely:
" https://github.com/nvim-treesitter/nvim-treesitter/issues/1424
augroup remember_folds
  autocmd!
  autocmd BufWinLeave *.* mkview
  " autocmd BufWinEnter *.* silent! edit | loadview
  autocmd BufWinEnter *.* silent! loadview
augroup END
