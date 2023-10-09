let g:coc_global_extensions = [
\ 'coc-tsserver',
\ 'coc-solargraph',
\ 'coc-stylelintplus',
\ 'coc-prettier',
\ 'coc-tailwindcss',
\ 'coc-json',
\ 'coc-eslint'
\ ]
let g:coc_node_path = substitute(system('cd $HOME; asdf which node'), '\n', '', 'g')

inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"

inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
