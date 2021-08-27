local wk = require("which-key")

wk.setup{
  plugins = {
    marks = true, -- shows a list of your marks on ' and `
    registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
    -- the presets plugin, adds help for a bunch of default keybindings in Neovim
    -- No actual key bindings are created
    presets = {
      operators = true, -- adds help for operators like d, y, ...
      motions = true, -- adds help for motions
      text_objects = true, -- help for text objects triggered after entering an operator
      windows = true, -- default bindings on <c-w>
      nav = true, -- misc bindings to work with windows
      z = true, -- bindings for folds, spelling and others prefixed with z
      g = true, -- bindings for prefixed with g
    },
    spelling = { enabled = true, suggestions = 20 }, -- use which-key for spelling hints
  },
  icons = {
    breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
    separator = "➜", -- symbol used between a key and it's label
    group = "+", -- symbol prepended to a group
  },
  window = {
    border = "single", -- none, single, double, shadow
    position = "bottom", -- bottom, top
    margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
    padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
  },
  layout = {
    height = { min = 4, max = 25 }, -- min and max height of the columns
    width = { min = 20, max = 50 }, -- min and max width of the columns
    spacing = 3, -- spacing between columns
  },
  hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ " }, -- hide mapping boilerplate
  show_help = true, -- show help message on the command line when the popup is visible
}


local keymap = {
  t = {":call fzf#run(fzf#wrap({'source': 'git ls-files --exclude-standard --others --cached'}))<CR>", 'fzf'},
  n = {':NERDTreeToggle<CR>', 'nerdtree'},
  m = {':NERDTreeFind<CR>', 'nerdtree'},
  l = {
    name = "lsp",
    d = { "<Plug>(coc-definition)", "definition" },
    y = { "<Plug>(coc-type-definition)", "type definition" },
    r = { "<Plug>(coc-references)", "references" },
    f = { "<Plug>(coc-format-selected)", "format" },
    h = { ":call CocAction('doHover')<CR>", "hover" },
    a = { "<Plug>(coc-codeaction)", "code [a]ction" },
    c = { "<Plug>(coc-rename)", "[c]hange name (rename)" },
  },
  ["/"] = {":CommentToggle<CR>", "comment line"}
}

local x_keymap = {
  l =  {
    name = "lsp",
    a = { "<Plug>(coc-codeaction-selected)", "coc code action"}
  }
}

wk.register(keymap, {prefix= "<leader>"})
wk.register(x_keymap, {prefix = "<leader>", mode = "x"})

local local_keymap = {
  l = {':PromoteToLet<CR>', 'promote to let'}
}

wk.register(local_keymap, {prefix="<localleader>"})

