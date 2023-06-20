set nocompatible
" filetype off " voor vundle

" set leader char
let mapleader = ","
" let mapleader = "\<Space>"
let maplocalleader = " "

set number
set mouse=a

" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set nohls " geen search highlight
set incsearch
set ignorecase
set smartcase

set list listchars=tab:\ \ ,trail:·
" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

" Status bar
set laststatus=2

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set modeline
set modelines=10

" Directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backup

" Show (partial) command in the status line
set showcmd

set guioptions-=L
set guioptions-=r
set splitright
set splitbelow

set colorcolumn=80

" gutter had plots verkeerde kleuren
" https://stackoverflow.com/questions/15277241/changing-vim-gutter-color
highlight clear SignColumn

" {{{ colorscheme
" lua require('colorbuddy').colorscheme('onebuddy')
" lua require('colorbuddy').colorscheme('spacebuddy')
" lua vim.cmd('colorscheme modus-operandi')
set termguicolors
let g:gruvbox_invert_selection=0
colorscheme gruvbox
" }}}

" Remember last location in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
        \| exe "normal g'\"" | endif
endif

set foldenable
set foldlevel=1
set foldlevelstart=0
" specifies for which commands a fold will be opened
set foldopen=block,hor,insert,jump,mark,percent,quickfix,search,tag,undo
" hi Folded cterm=bold,underline ctermfg=12 ctermbg=0 guifg=Cyan guibg=DarkGrey
hi Folded cterm=bold
hi Folded term=bold cterm=bold

" use project specific vimrc viles
" https://andrew.stwrt.ca/posts/project-specific-vimrc/
set exrc
set secure

set backupskip=/tmp/*,/private/tmp/*

" set clipboard+=unnamedplus

set timeoutlen=1000
