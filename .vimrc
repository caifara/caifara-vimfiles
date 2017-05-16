set nocompatible
" filetype off " voor vundle

call plug#begin('~/.vim/plugged')

Plug 'mileszs/ack.vim'
Plug 'vim-scripts/Color-Sampler-Pack'
Plug 'vim-scripts/Conque-Shell'
" Git
" fugitive + splice : geen goed idee
" https://github.com/sjl/splice.vim
Plug 'tpope/vim-fugitive'
" haml and sass runtime files
Plug 'tpope/vim-haml'
" js indent
Plug 'pangloss/vim-javascript'
Plug 'ddollar/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
" vibrant ink achtige kleuren
Plug 'tpope/vim-vividchalk'
Plug 'altercation/vim-colors-solarized'

" autocomplete met tab
" Plug 'ervandew/supertab'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'fishbullet/deoplete-ruby'
" Use deoplete.
let g:deoplete#enable_at_startup = 1
" Use smartcase.
let g:deoplete#enable_smart_case = 1

" <C-h>, <BS>: close popup and delete backword char.
" inoremap <expr><C-h> deoplete#smart_close_popup()."\<C-h>"
" inoremap <expr><BS>  deoplete#smart_close_popup()."\<C-h>"

" <CR>: close popup and save indent.
" inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
" function! s:my_cr_function() abort
"   return deoplete#close_popup() . "\<CR>"
" endfunction
" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"


Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }

Plug 'tpope/vim-cucumber'
Plug 'timcharper/textile.vim'
" alles rails (tem :A)
Plug 'tpope/vim-rails'
Plug 'ecomba/vim-ruby-refactoring'
Plug 'vim-scripts/ZoomWin'
" Plug 'tpope/vim-markdown'
" align blokken
Plug 'tsaleh/vim-align'
" Plug 'tpope/vim-unimpaired' ' coole commando's voorlopig gebruik ik ze
" niet
" voeg 'end' toe in ruby waar nodig
Plug 'tpope/vim-endwise'
Plug 'kchmck/vim-coffee-script'
" syntax fouten tonen (website is interessant!)
" Plug 'scrooloose/syntastic'
Plug 'neomake/neomake'

" info git status
Plug 'airblade/vim-gitgutter'

Plug 'mattn/gist-vim'
" nodig voor gist-vim
Plug 'mattn/webapi-vim'
" brackets automatisch sluiten
" meer mogelijkheden hier: http://stackoverflow.com/questions/21316727/automatic-closing-brackets-for-vim
" Plug 'cohama/lexima.vim'
Plug 'Raimondi/delimitMate'
" veranderen van naam en verder editten
Plug 'vim-scripts/Rename2'
" code browsing
Plug 'majutsushi/tagbar'
" utilities, soms nodig voor andere plugings
Plug 'tomtom/tlib_vim'
" undo tree
Plug 'sjl/gundo.vim'

"command t replacement
" Plug 'kien/ctrlp.vim'
" fzf al via homebrew geïnstalleerd
Plug 'junegunn/fzf', { 'dir': '/usr/local/opt/fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" markeren van kleuren in css bestanden in de juiste kleuren
Plug 'ap/vim-css-color'
" kleuren invoegen (:colorHex)
Plug 'seaofclouds/vim-colorx'
" Plug 'simplefold'
" xml/html
Plug 'othree/xml.vim'

" voor lisp/clojure
" Plug 'slimv.vim'
Plug 'guns/vim-clojure-static'
Plug 'tpope/vim-fireplace'

" voor elixir
Plug 'elixir-lang/vim-elixir'

" documentatie'
Plug 'lucapette/vim-ruby-doc'
" Plug 'caifara/vim-ruby-run'
Plug 'henrik/vim-ruby-runner'
" Werken met markdown (pandoc eigenlijk)
" Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pantondoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
" Plug 'sjl/splice.vim'

" Slime, maar dan voor tmux
Plug 'jgdavey/tslime.vim'
Plug 'jgdavey/vim-turbux'
Plug 'slim-template/vim-slim'
Plug 'rizzatti/funcoo.vim'
Plug 'rizzatti/dash.vim'

" Betere lijnnummering
" https://github.com/myusuf3/numbers.vim
Plug 'myusuf3/numbers.vim' 

" v om steeds meer te selecteren
Plug 'terryma/vim-expand-region'
" vmap v <Plug>(expand_region_expand)
" vmap <C-v> <Plug>(expand_region_shrink)

Plug 'mikewest/vimroom'

" voor snipmate zijn volgende 4 lijnen nodig
" Plug 'MarcWeber/vim-addon-mw-utils'
" Plug 'garbas/vim-snipmate'
" Plug 'honza/vim-snippets'

" voor htmlbook
Plug 'file:///Users/caifara/Documents/by2.be/open_source/vim-htmlbook'

" statusbar
" Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" betere foldtext
Plug 'Konfekt/FoldText'
Plug 'Konfekt/FastFold'

" multiple cursors, sublime style
Plug 'terryma/vim-multiple-cursors'

" tabellen maken https://github.com/dhruvasagar/vim-table-mode
Plug 'dhruvasagar/vim-table-mode'

Plug 'junegunn/rainbow_parentheses.vim'

" Codi: interactieve irb shell
Plug 'metakirby5/codi.vim'

call plug#end()

" Airline config
let g:airline_powerline_fonts = 1
let g:Powerline_symbols='unicode'
" if !exists('g:airline_symbols')
"     let g:airline_symbols = {}
" endif

" " " unicode symbols
" let g:airline_left_sep = '»'
" let g:airline_left_sep = '▶'
" let g:airline_right_sep = '«'
" let g:airline_right_sep = '◀'
" let g:airline_symbols.linenr = '␊'
" let g:airline_symbols.linenr = '␤'
" let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.branch = '⎇'
" let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.paste = 'Þ'
" let g:airline_symbols.paste = '∥'
" let g:airline_symbols.whitespace = 'Ξ'



set number

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
" set noequalalways

" set leader char
let mapleader = ","
" let mapleader = "\<Space>"
let maplocalleader = "-"

" fast save file
nnoremap <Leader>w :w<CR>

" " copy paste naar clipboard
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" NERDTree configuration
let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$']
map <Leader>n :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1

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

" Opens an edit command with the path of the currently edited file filled in
" Normal mode: <Leader>e
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" Opens a tab edit command with the path of the currently edited file filled in
" Normal mode: <Leader>t
map <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>

" Inserts the path of the currently edited file into a command
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
let g:syntastic_quiet_messages = {'level': 'warnings'}

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

" https://github.com/neovim/neovim/issues/2048
if has('nvim')
  nmap <BS> <C-W>h
endif

" xterm not recognized right by vim
" set term=builtin_ansi " fouten in 7.4

let g:slime={"sessionname": "slime", "windowname": "w0"}

" easier to reach 
map ù :

" zoek tag onder de cursor
nmap  <C-]>

" type hashrockets
imap   => 

" standard ack command
let g:ackprg="ack -H --nocolor --nogroup --column --ruby --java --js --yaml --coffee --css"

set guioptions-=L
set guioptions-=r
set splitright
set splitbelow

" bestand bewaren -> neomake (syntax, rubycop)
autocmd! BufWritePost * Neomake

" ToggleFullScreen w aangeroepen in gvimrc
fu! ToggleFullScreen()
  if &fullscreen == 1
    set guioptions+=e
  else
    set guioptions-=e
  endif

  set invfu
endfu

if has('nvim')
  set background=dark
  let g:solarized_italic=0
endif

" http://winterdom.com/2008/08/molokaiforvim
color solarized
set background=dark
" let g:Powerline_theme='skwp'
" let g:Powerline_colorscheme='skwp'

" indent whole file
nmap <leader>i gg=G''

" run ctags
nmap <leader>rt :call system("/usr/local/bin/ctags --extra=+f --exclude=tmp --exclude=vendor --exclude=jasper -R *")<CR>

" documentation uses osx style
let g:ruby_doc_command='open'

" Command-/ to toggle comments
map <leader>/ <plug>NERDCommenterToggle<CR>
" imap <leader>/ <Esc><plug>NERDCommenterToggle<CR>i

" ctrl-p shortcuts
" map <leader>t :CtrlP<CR>
map <leader>t :FZF<CR>

" new tabs
map <C-t> :tabnew<CR>
" imap <C-t> <ESC>:tabnew<CR>

" powerline heeft dit nodig
set t_Co=256
let g:Powerline_symbols = 'fancy'
let g:Powerline_symbols='unicode'

" 80 kols max
set colorcolumn=80

" customize vim startup
" start nerdtree on startup
" autocmd VimEnter * NERDTree

" snellere testen
" http://velvetpulse.com/2012/11/19/improve-your-ruby-workflow-by-integrating-vim-tmux-pry/
" command -nargs=? -complete=shellcmd W  :w | :call ScreenShellSend("load '".@%."';")
let g:no_turbux_mappings = 1 " eigen map gebruiken
map <leader>S <Plug>SendTestToTmux
map <leader>s <Plug>SendFocusedTestToTmux
let g:tmux_sessionname = "0"
let g:tmux_windowname = "tmux"
" let g:tmux_panenumber = "1"
let g:turbux_command_prefix = "zeus"
let g:turbux_command_cucumber = 'cucumber --require features'
vmap <C-c><C-c> <Plug>SendSelectionToTmux

set nohls


" om crontab edits mogelijk te maken

set backupskip=/tmp/*,/private/tmp/*
au BufNewFile,BufRead *.emblem set filetype=slim

" number.vim
nnoremap <F5> :NumbersToggle<CR>
nnoremap <F6> :NumbersOnOff<CR>

""
" betere foldtext, samen met foldtext
"
" set foldmethod=syntax

" { Syntax Folding
  let g:vimsyn_folding='af'
  let g:tex_fold_enabled=1
  let g:xml_syntax_folding = 1
  let g:clojure_fold = 1
  let ruby_fold = 1
  let perl_fold = 1
  let perl_fold_blocks = 1
" }

set foldenable
set foldlevel=0
set foldlevelstart=0
" specifies for which commands a fold will be opened
set foldopen=block,hor,insert,jump,mark,percent,quickfix,search,tag,undo
" hi Folded cterm=bold,underline ctermfg=12 ctermbg=0 guifg=Cyan guibg=DarkGrey
hi Folded cterm=bold

nnoremap <silent> zr zr:<c-u>setlocal foldlevel?<CR>
nnoremap <silent> zm zm:<c-u>setlocal foldlevel?<CR>

nnoremap <silent> zR zR:<c-u>setlocal foldlevel?<CR>
nnoremap <silent> zM zM:<c-u>setlocal foldlevel?<CR>

" Change Option Folds
nnoremap zi  :<c-u>call <SID>ToggleFoldcolumn(1)<CR>
nnoremap coz :<c-u>call <SID>ToggleFoldcolumn(0)<CR>
nmap     cof coz

function! s:ToggleFoldcolumn(fold)
  if &foldcolumn
    let w:foldcolumn = &foldcolumn
    silent setlocal foldcolumn=0
    if a:fold | silent setlocal nofoldenable | endif
  else
      if exists('w:foldcolumn') && (w:foldcolumn!=0)
        silent let &l:foldcolumn=w:foldcolumn
      else
        silent setlocal foldcolumn=4
      endif
      if a:fold | silent setlocal foldenable | endif
  endif
  setlocal foldcolumn?
endfunction
" klaar foldtext
