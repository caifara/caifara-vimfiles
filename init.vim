runtime plugins.vim
runtime ftplugin.vim
runtime settings.vim
runtime functions.vim
runtime keybindings.vim

lua require('plugin.mini-nvim')
lua require('plugin.chatgpt')
lua require('plugin.comment')
lua require('plugin.leap')
lua require('plugin.nvim-autopairs')
lua require('plugin.nvim-dap')
lua require('plugin.nvim-treesitter')
lua require('plugin.nvim-treesitter-textobjects')
lua require('plugin.nvim-treesitter-context')
lua require('plugin.octo')
lua require('plugin.rainbow-delimiters')
lua require('plugin.telescope')
lua require('plugin.which-key-setup')
lua require('plugin.auto-hlsearch')

" nodig?
" MacVIM shift+arrow-keys behavior (required in .vimrc)
" let macvim_hig_shift_movement = 1
