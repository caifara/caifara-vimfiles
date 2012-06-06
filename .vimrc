set nocompatible
filetype off " voor vundle

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

Bundle "mileszs/ack.vim"
Bundle "vim-scripts/Color-Sampler-Pack"
Bundle "vim-scripts/Conque-Shell"
" Git
" fugitive + splice : geen goed idee
" https://github.com/sjl/splice.vim
" Bundle "tpope/vim-fugitive"
" haml and sass runtime files
Bundle "tpope/vim-haml"
" js indent
Bundle "pangloss/vim-javascript"
Bundle "ddollar/nerdcommenter"
Bundle "scrooloose/nerdtree"
Bundle "tpope/vim-surround"
" vibrant ink achtige kleuren
Bundle "tpope/vim-vividchalk"
Bundle "altercation/vim-colors-solarized"
" autocomplete met tab
Bundle "ervandew/supertab"
Bundle "tpope/vim-cucumber"
Bundle "timcharper/textile.vim"
" alles rails (tem :A)
Bundle "tpope/vim-rails"
Bundle "vim-scripts/ZoomWin"
" Bundle "msanders/snipmate.vim" " snippets zoals in textmate
Bundle "tpope/vim-markdown"
" align blokken
Bundle "tsaleh/vim-align"
" Bundle "tpope/vim-unimpaired" " coole commando's voorlopig gebruik ik ze
" niet
" voeg 'end' toe in ruby waar nodig
Bundle "tpope/vim-endwise"
Bundle "kchmck/vim-coffee-script"
" syntax fouten tonen (website is interessant!)
Bundle "scrooloose/syntastic"
Bundle "mattn/gist-vim"
Bundle "vim-scripts/AutoClose"
" veranderen van naam en verder editten
Bundle "vim-scripts/Rename2"
" code browsing
Bundle "majutsushi/tagbar"
" utilities, soms nodig voor andere plugings
Bundle "tomtom/tlib_vim"
" undo tree
Bundle "sjl/gundo.vim"
"command t replacement
Bundle "kien/ctrlp.vim"
" markeren van kleuren in css bestanden in de juiste kleuren
Bundle "ap/vim-css-color"
" kleuren invoegen (:colorHex)
Bundle "seaofclouds/vim-colorx"
Bundle "simplefold"
Bundle "slimv.vim"
" documentatie"
Bundle "lucapette/vim-ruby-doc.git"
Bundle "caifara/vim-ruby-run"
Bundle "sjl/splice.vim"

set number
set ruler
syntax on

" Set encoding
set encoding=utf-8

" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set list listchars=tab:\ \ ,trail:·

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

" Status bar
set laststatus=2

" Without setting this, ZoomWin restores windows in a way that causes
" equalalways behavior to be triggered the next time CommandT is used.
" This is likely a bludgeon to solve some other issue, but it works
set noequalalways

" set leader char
let mapleader = ","
let maplocalleader = "-"

" NERDTree configuration
let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$']
map <Leader>n :NERDTreeToggle<CR>

" ZoomWin configuration
map <Leader><Leader> :ZoomWin<CR>

" CTags
map <Leader>rt :!ctags --extra=+f --exclude=tmp -R *<CR><CR>
map <C-\> :tnext<CR>

" Remember last location in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

function s:setupWrapping()
  set wrap
  set wrapmargin=2
  set textwidth=72
endfunction

function s:setupMarkup()
  call s:setupWrapping()
  map <buffer> <Leader>p :Hammer<CR>
endfunction

" make uses real tabs
au FileType make set noexpandtab

" Thorfile, Rakefile, Vagrantfile and Gemfile are Ruby
au BufRead,BufNewFile {Gemfile,Guardfile,Rakefile,Vagrantfile,Thorfile,config.ru}    set ft=ruby

" md, markdown, and mk are markdown and define buffer-local preview
au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} call s:setupMarkup()

" add json syntax highlighting
au BufNewFile,BufRead *.json set ft=javascript

au BufRead,BufNewFile *.txt call s:setupWrapping()

" make Python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )
au FileType python set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=79

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" load the plugin and indent settings for the detected filetype
filetype plugin indent on

" Opens an edit command with the path of the currently edited file filled in
" Normal mode: <Leader>e
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" Opens a tab edit command with the path of the currently edited file filled in
" Normal mode: <Leader>t
map <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>

" Inserts the path of the currently edited file into a command
" Command mode: Ctrl+P
cmap <C-P> <C-R>=expand("%:p:h") . "/" <CR>

" Unimpaired configuration
" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e
" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv

" Enable syntastic syntax checking
let g:syntastic_enable_signs=1
let g:syntastic_quiet_warnings=1

" gist-vim defaults
if has("mac")
  let g:gist_clip_command = 'pbcopy'
elseif has("unix")
  let g:gist_clip_command = 'xclip -selection clipboard'
endif
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1

" Use modeline overrides
set modeline
set modelines=10

" Directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backup

" Turn off jslint errors by default
let g:JSLintHighlightErrorLine = 0

" MacVIM shift+arrow-keys behavior (required in .vimrc)
let macvim_hig_shift_movement = 1

" % to bounce from do to end etc.
runtime! macros/matchit.vim

" Show (partial) command in the status line
set showcmd

" Move to other windows in split window mode
map <C-h> <C-W>h
map <C-l> <C-W>l
map <C-j> <C-W>j
map <C-k> <C-W>k

" xterm not recognized right by vim
set term=builtin_ansi

let g:slime={"sessionname": "slime", "windowname": "w0"}

" run cucumber features in screen
" augroup Cucumber
"   au!
"   autocmd BufNewFile,BufReadPost,BufEnter *.feature
"     \ set filetype=cucumber|
"     \ :nmap <leader>r :call Send_to_Screen("bundle exec cucumber -t @r" . "\n")<CR>|
"     \ :nmap <leader>R :call Send_to_Screen("bundle exec cucumber -p s -t @r" . "\n")<CR>|
" augroup END

" method to write all open files and exec cucumber on all @r tags
" fu! WriteCucumber()
"   :wall
"   :call Send_to_Screen("bundle exec cucumber -t @r" . "\n")
" endfu
" :command! Wr :call WriteCucumber()
" nmap <leader>wr :call WriteCucumber()<CR>

" specky
let g:speckySpecSwitcherKey  = "<C-a>"

" easier to reach 
map ù :

" zoek tag onder de cursor
nmap  <C-]>

" type hashrockets
imap   => 

" standard ack command
let g:ackprg="ack -H --nocolor --nogroup --column --ruby --java --js"

set guioptions-=L
set guioptions-=r
set splitright
set splitbelow

" ToggleFullScreen w aangeroepen in gvimrc
fu! ToggleFullScreen()
  if &fullscreen == 1
    set guioptions+=e
  else
    set guioptions-=e
  endif

  set invfu
endfu

" http://winterdom.com/2008/08/molokaiforvim
color solarized
set background=dark

" indent whole file
nmap <leader>i gg=G''

" run ctags
nmap <leader>rt :call system("/usr/local/bin/ctags --extra=+f --exclude=tmp -R *")<CR>

" documentation uses osx style
let g:ruby_doc_command='open'

" Command-/ to toggle comments
map <leader>/ <plug>NERDCommenterToggle<CR>
imap <leader>/ <Esc><plug>NERDCommenterToggle<CR>i

" ctrl-p shortcuts
map <leader>t :CtrlP<CR>
imap <leader>t <ESC>:CtrlP<CR>

" new tabs
map <C-t> :tabnew<CR>
imap <C-t> <ESC>:tabnew<CR>
