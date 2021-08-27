" Indien rspec ingesteld is om de testen te evalueren naar quickfix
" kan je quickfix laden met ,r (van rspec)
map <leader>r :cg quickfix.out \| cwindow<CR>

map <C-t> :tabnew<CR>
" imap <C-t> <ESC>:tabnew<CR>
noremap <Leader><Left>  :tabmove -1<CR>
noremap <Leader><Right> :tabmove +1<CR>

noremap <Leader>n :NERDTreeToggle<CR>

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

" type hashrockets
imap   =>
