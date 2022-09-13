call plug#begin('~/.vim/plugged')

" {{{ extending vim, extra functionality
  Plug 'mileszs/ack.vim' " zoeken: werkt na brew install the_silver_searcher

  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
  Plug 'nvim-treesitter/playground'
  Plug 'nvim-treesitter/nvim-treesitter-textobjects'
  Plug 'p00f/nvim-ts-rainbow' " rainbow parentheses, treesitter versie
  Plug 'mizlan/iswap.nvim' " swap argumenten, array dingen enz :ISwap

  Plug 'sbdchd/neoformat'

  Plug 'mfussenegger/nvim-dap' " Debugging

  Plug 'mbbill/undotree'

  Plug 'Konfekt/FastFold'

  Plug 'windwp/nvim-spectre' " search replace

  Plug 'folke/which-key.nvim'

  " Plug '/usr/local/opt/fzf'
  " Plug 'junegunn/fzf.vim'
  Plug 'nvim-lua/plenary.nvim' " telescope dependency
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
  Plug 'fannheyward/telescope-coc.nvim'

  Plug 'preservim/nerdtree'

  Plug 'myusuf3/numbers.vim' " Betere lijnnummering

  Plug 'lukas-reineke/indent-blankline.nvim' " Verticale lijnen
" }}}

" {{{ typing tools
  Plug 'numToStr/Comment.nvim'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-repeat' " repeat (.) toelaten met vim-surround
  Plug 'AndrewRadev/splitjoin.vim' " wisselen tss block/inline (ook vr hash) met gJ en gS go-join, go-split

  Plug 'Raimondi/delimitMate' " autoclose haakjes en zo
" }}}

" {{{ colorschemes
  " Plug 'tjdevries/colorbuddy.vim'
  " Plug 'Th3Whit3Wolf/onebuddy'
  " Plug 'ishan9299/modus-theme-vim'
  " Plug 'Th3Whit3Wolf/spacebuddy'

  Plug 'rktjmp/lush.nvim'
  Plug 'ellisonleao/gruvbox.nvim'
  Plug 'ryanoasis/vim-devicons'
" }}}

" {{{ lsp
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'xiyaowong/coc-lightbulb'

  Plug 'liuchengxu/vista.vim' " tagbar aan zijkant: :Vista
" }}}

" {{{ git
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb' " github extensie voor vim-fugitive
  Plug 'airblade/vim-gitgutter'
  Plug 'pwntester/octo.nvim'
  Plug 'samoshkin/vim-mergetool'
" }}}

" {{{ Testing
Plug 'jgdavey/tslime.vim'
Plug 'jgdavey/vim-turbux'
" }}}

" {{{ js / html / xml / css / ts(x) editing
  Plug 'pangloss/vim-javascript'
  Plug 'MaxMEllon/vim-jsx-pretty'
  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
  Plug 'stephenway/postcss.vim'

  Plug 'mattn/emmet-vim' " xml syntax editing
  Plug 'othree/xml.vim' " xml/html

  " Plug 'ap/vim-css-color' " markeren van kleuren in css bestanden in de juiste kleuren
  Plug 'KabbAmine/vCoolor.vim' " kleuren invoegen (:VCoolor)
" }}}

" {{{ ruby
  Plug 'vim-ruby/vim-ruby'
  Plug 'tpope/vim-cucumber'
  Plug 'tpope/vim-rails'
  " Plug 'ecomba/vim-ruby-refactoring'
  Plug 'windwp/nvim-autopairs' " voeg 'end' toe in ruby waar nodig
  Plug 'tpope/vim-haml' " haml and sass runtime files
  Plug 'lucapette/vim-ruby-doc' " ruby documentatie'
  Plug 'henrik/vim-ruby-runner'
" }}}
"
" {{{ pandoc/markdown
  Plug 'vim-pandoc/vim-pantondoc' " Werken met markdown (pandoc eigenlijk)
  Plug 'vim-pandoc/vim-pandoc-syntax'
  Plug 'junegunn/goyo.vim' " writeroom, gebruik :Goyo
  Plug 'reedes/vim-pencil' " markdown/writing, starten met :Pencil

  Plug 'dhruvasagar/vim-table-mode' " tabellen maken https://github.com/dhruvasagar/vim-table-mode

  Plug 'sotte/presenting.vim'
" }}}

" {{{ lisp/clojure
  " Plug 'slimv.vim'
  " Plug 'guns/vim-clojure-static'
  " Plug 'tpope/vim-fireplace'
" }}} 

Plug 'elzr/vim-json'

Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim' " nodig voor gist-vim

" Plug 'cohama/lexima.vim'
" utilities, soms nodig voor andere plugings
Plug 'tomtom/tlib_vim'

" Plug 'elixir-lang/vim-elixir' " voor elixir

" Plug 'rizzatti/funcoo.vim' " dash dependency
" Plug 'rizzatti/dash.vim'

Plug 'terryma/vim-expand-region' " v om steeds meer te selecteren

" Plug 'terryma/vim-multiple-cursors' multiple cursors
Plug 'mg979/vim-visual-multi' " multiple cursors

Plug 'tpope/vim-obsession'

Plug 'junegunn/vader.vim' " vimscript specs

call plug#end()
