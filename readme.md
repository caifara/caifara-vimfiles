# Install

These vimfiles are for neovim only.

* `brew install neovim`
* install plug package manager: https://github.com/junegunn/vim-plug
* `git clone git@github.com:caifara/caifara-vimfiles.git ~/vimfiles`
* `cd ~`
* `mkdir -p ~/.config/nvim/`
* `ln -s ~/vimfiles/.vimrc ~/.config/nvim/init.vim `
* `nvim`
* `:PlugInstall`
* :CocInstall coc-solargraph

# Dependencies

* brew
  * the_silver_searcher
  * python3
* `:healthcheck` in vim om te zien wat nog nodig is
* gem rufo en mogelijks een `.rufo`
