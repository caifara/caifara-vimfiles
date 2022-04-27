" Indien rspec ingesteld is om de testen te evalueren naar quickfix
" kan je quickfix laden met ,r (van rspec)
" map <leader>r :cg quickfix.out \| cwindow<CR>

map <C-t> :tabnew<CR>
" imap <C-t> <ESC>:tabnew<CR>
noremap <Leader><Left>  :tabmove -1<CR>
noremap <Leader><Right> :tabmove +1<CR>

noremap <Leader>n :NERDTreeToggle<CR>

" terminal mode mappings
" exit terminal mode
tnoremap <Esc> <C-\><C-n>

" To use `ALT+{h,j,k,l}` to navigate windows from any mode: >
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l

map <C-\> :tnext<CR>


" Move to other windows in split window mode
map <C-h> <C-W>h
map <C-l> <C-W>l
map <C-j> <C-W>j
map <C-k> <C-W>k

" easier to reach
map ù :

" zoek tag onder de cursor
nmap  <C-]>

nmap Y yy

" type hashrockets
imap   =>

" scroll coc floating window
nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"

nnoremap t :call CocAction('doHover')<CR>
