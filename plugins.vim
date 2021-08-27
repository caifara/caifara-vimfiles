call plug#begin('~/.vim/plugged')

Plug 'mileszs/ack.vim' " zoeken: werkt na brew install the_silver_searcher
Plug 'vim-scripts/Color-Sampler-Pack'
Plug 'vim-scripts/Conque-Shell'

" fugitive + splice : geen goed idee
" https://github.com/sjl/splice.vim
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb' " github extensie voor vim-fugitive

Plug 'tpope/vim-haml' " haml and sass runtime files

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'nvim-treesitter/playground'

Plug 'tjdevries/colorbuddy.vim'
Plug 'Th3Whit3Wolf/onebuddy'
Plug 'ishan9299/modus-theme-vim'
Plug 'Th3Whit3Wolf/spacebuddy'

Plug 'pangloss/vim-javascript'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

Plug 'sbdchd/neoformat'

Plug 'stephenway/postcss.vim'

Plug 'terrortylor/nvim-comment'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat' " repeat (.) toelaten met vim-surround

Plug 'junegunn/goyo.vim' " writeroom, gebruik :Goyo

Plug 'mattn/emmet-vim'

Plug 'elzr/vim-json'

Plug 'ryanoasis/vim-devicons'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" tagbar aan zijkant: :Vista
Plug 'liuchengxu/vista.vim'

Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }

Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-cucumber'
Plug 'timcharper/textile.vim'
" alles rails (tem :A)
Plug 'tpope/vim-rails'
Plug 'ecomba/vim-ruby-refactoring'
" wisselen tss block/inline (ook vr hash) met gJ en gS go-join, go-split
Plug 'AndrewRadev/splitjoin.vim'

" Plug 'tpope/vim-markdown'
" align blokken
Plug 'tsaleh/vim-align'
" Plug 'tpope/vim-unimpaired' ' coole commando's voorlopig gebruik ik ze
" niet
" voeg 'end' toe in ruby waar nodig
Plug 'windwp/nvim-autopairs'
Plug 'kchmck/vim-coffee-script'
" syntax fouten tonen (website is interessant!)
" Plug 'scrooloose/syntastic'

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
" utilities, soms nodig voor andere plugings
Plug 'tomtom/tlib_vim'
" undo tree
Plug 'sjl/gundo.vim'

" fuzzy find search
"command t replacement
" Plug 'kien/ctrlp.vim'
" fzf al via homebrew geïnstalleerd
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" markeren van kleuren in css bestanden in de juiste kleuren
Plug 'ap/vim-css-color'
" kleuren invoegen (:VCoolor)
Plug 'KabbAmine/vCoolor.vim'
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

Plug 'slim-template/vim-slim'
Plug 'rizzatti/funcoo.vim'
Plug 'rizzatti/dash.vim'

" Betere lijnnummering
" https://github.com/myusuf3/numbers.vim
Plug 'myusuf3/numbers.vim'

" v om steeds meer te selecteren
Plug 'terryma/vim-expand-region'

" multiple cursors
" Plug 'terryma/vim-multiple-cursors'
Plug 'mg979/vim-visual-multi'

" tabellen maken https://github.com/dhruvasagar/vim-table-mode
Plug 'dhruvasagar/vim-table-mode'

Plug 'junegunn/rainbow_parentheses.vim'

" markdown/writing, starten met :Pencil
Plug 'reedes/vim-pencil'

Plug 'sotte/presenting.vim'

Plug 'preservim/nerdtree'

" Testen draaien {{{
Plug 'jgdavey/tslime.vim'
Plug 'jgdavey/vim-turbux'
" }}}


Plug 'Konfekt/FastFold'

Plug 'tpope/vim-obsession'

" vimscript specs
Plug 'junegunn/vader.vim'

Plug 'folke/which-key.nvim'

call plug#end()
