runtime plugins.vim
runtime ftplugin.vim
runtime settings.vim
runtime functions.vim
runtime keybindings.vim

lua require('plugin.which-key-setup')
lua require('plugin.nvim-treesitter')
lua require('plugin.nvim-comment')

" nodig?
" MacVIM shift+arrow-keys behavior (required in .vimrc)
" let macvim_hig_shift_movement = 1
