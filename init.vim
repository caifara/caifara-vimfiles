runtime plugins.vim
runtime ftplugin.vim
runtime settings.vim
runtime functions.vim
runtime keybindings.vim

lua require('plugin.which-key-setup')
lua require('plugin.nvim-treesitter')
lua require('plugin.comment')
lua require('plugin.telescope')
lua require('plugin.nvim-dap')
lua require('plugin.nvim-treesitter-textobjects')
lua require('plugin.nvim-ts-rainbow')
lua require('plugin.octo')
lua require('plugin.nvim-autopairs')

" nodig?
" MacVIM shift+arrow-keys behavior (required in .vimrc)
" let macvim_hig_shift_movement = 1
