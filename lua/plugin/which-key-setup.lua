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
  a = { "<Plug>(coc-codeaction)", "code [a]ction" },
  r = { "<Plug>(coc-rename)", "[c]hange name (rename)" },

  N = {':NERDTreeFind<CR>', 'nerdtree'},
  n = {':NERDTreeToggle<CR>', 'nerdtree'},

  i = {':ISwap<CR>', 'ISwap'},
  I = {':ISwapWith<CR>', 'ISwap (onder cursor)'},

  -- t = {":call fzf#run(fzf#wrap({'source': 'git ls-files --exclude-standard --others --cached'}))<CR>", 'fzf'},
  f = {"<Plug>(coc-fix-current)", 'quick[f]ix'},
  t = {":Telescope git_files<CR>", 'fzf'},
  p = {":Telescope live_grep<CR>", 'project wide search'},
  P = {":lua require'telescope.builtin'.grep_string()<CR>", "project wide search word under cursor"},
  s = {"<Plug>SendFocusedTestToTmux", "project wide search word under cursor"},
  S = {"<Plug>SendTestToTmux", "project wide search word under cursor"},
  Y = {"\"+Y", "yank line to system registry"},
  l = {
    name = "lsp",
    a = { "<Plug>(coc-codeaction)", "code [a]ction" },
    c = { "<Plug>(coc-rename)", "[c]hange name (rename)" },
    d = { "<Plug>(coc-definition)", "definition" },
    f = { "<Plug>(coc-fix-current)", "quick[f]ix current" },
    o = { "<Plug>(coc-format-selected)", "format" },
    h = { ":call CocAction('doHover')<CR>", "hover" },
    p = { ":call CocAction('jumpDefinition', v:false)<CR>", "Peek definition" },
    r = { ":Telescope coc references<CR>", "references" },
    y = { "<Plug>(coc-type-definition)", "type definition" },
  },
  d = {
    name = "debug adapter protocol",
    b = { ":lua require'dap'.toggle_breakpoint()<CR>", "set breakpoint" },
    c = { ":lua require'dap'.continue()<CR>", "start/continue" },
    so = { ":lua require'dap'.step_over()<CR>", "step over"},
    si = { ":lua require'dap'.step_into()<CR>", "step into"},
    r = { ":lua require'dap'.step_into()<CR>", "repl"},
  },
  ["/"] = {":CommentToggle<CR>", "comment line"}
}
wk.register(keymap, {prefix= "<leader>", noremap=true})

local x_keymap = {
  a = { "<Plug>(coc-codeaction-selected)", "coc code action"},
  l =  {
    name = "lsp",
    a = { "<Plug>(coc-codeaction-selected)", "coc code action"}
  }
}
wk.register(x_keymap, {prefix = "<leader>", mode = "x"})

local visual_keymap = {
  s = { ":lua require('spectre').open_visual()<CR>", "search/replace word under cursor" },
  y = {"\"+y", "yank to system registry"},
}
wk.register(visual_keymap, {prefix = "<leader>", mode = "v"})

local local_keymap = {
  l = {':PromoteToLet<CR>', 'promote to let'},
  c = {':LogUnderCursor<CR>', 'log word under cursor (js)'},
  s = {
    name = "spectre",
    s = {":lua require('spectre').open()<CR>", "project wide search/replace"},
    w = {":lua require('spectre').open_visual({select_word=true})<CR>", "search "},
    p = {"viw:lua require('spectre').open_file_search()<CR>", "search in current file"},
  },
}
wk.register(local_keymap, {prefix="<localleader>"})

local g_keymap = {
  d = { "<Plug>(coc-definition)", "definition" },
  D = {
    name = "open definition",
    t = { ":call CocAction('jumpDefinition', 'tabe')<CR>", "in tab" },
    s = { ":call CocAction('jumpDefinition', 'split')<CR>", "in split" },
    v = { ":call CocAction('jumpDefinition', 'vsplit')<CR>", "in vsplit" },
  },
  r = { ":Telescope coc references<CR>", "references" },
}
wk.register(g_keymap, {prefix= "g"})

-- local ctrl_keymap = {
--   a = { ":call codeium#Accept()<CR>" },
--   Right = { ":call codeium#CycleCompletions(1)<CR>" },
--   -- Left = { ":call codeium#CycleCompletions(-1)<CR>" },
--   Left = { ":echo 'werkt'<CR>" },
--   -- x = { ":call codeium#Clear()<CR>" },
--   x = { ":echo 'werkt'<CR>" },
--   y = { ":call codeium#Complete()<CR>" },
-- }
-- wk.register(ctrl_keymap, {prefix= "<C>", noremap=true})
