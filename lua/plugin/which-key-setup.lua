local wk = require("which-key")

wk.setup {
  plugins = {
    marks = true,     -- shows a list of your marks on ' and `
    registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
    -- the presets plugin, adds help for a bunch of default keybindings in Neovim
    -- No actual key bindings are created
    presets = {
      operators = true,                              -- adds help for operators like d, y, ...
      motions = true,                                -- adds help for motions
      text_objects = true,                           -- help for text objects triggered after entering an operator
      windows = true,                                -- default bindings on <c-w>
      nav = true,                                    -- misc bindings to work with windows
      z = true,                                      -- bindings for folds, spelling and others prefixed with z
      g = true,                                      -- bindings for prefixed with g
    },
    spelling = { enabled = true, suggestions = 20 }, -- use which-key for spelling hints
  },
  icons = {
    breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
    separator = "➜", -- symbol used between a key and it's label
    group = "+", -- symbol prepended to a group
  },
  layout = {
    height = { min = 4, max = 25 }, -- min and max height of the columns
    width = { min = 20, max = 50 }, -- min and max width of the columns
    spacing = 3,                    -- spacing between columns
  },
  show_help = true,                 -- show help message on the command line when the popup is visible
}

wk.add(
  {
    { "<leader>/",   ":CommentToggle<CR>",                                desc = "comment line",                          remap = false },

    { "<leader>n",   ":NERDTreeToggle<CR>",                               desc = "nerdtree",                              remap = false },
    { "<leader>N",   ":NERDTreeFind<CR>",                                 desc = "nerdtree",                              remap = false },

    { "<leader>Y",   '"+Y',                                               desc = "yank line to system registry",          remap = false },

    { "<leader>a",   "<Plug>(coc-codeaction)",                            desc = "code [a]ction",                         remap = false },
    { "<leader>f",   "<Plug>(coc-fix-current)",                           desc = "quick[f]ix",                            remap = false },
    { "<leader>r",   "<Plug>(coc-rename)",                                desc = "[c]hange name (rename)",                remap = false },

    { "<leader>I",   ":ISwapWith<CR>",                                    desc = "ISwap (onder cursor)",                  remap = false },
    { "<leader>i",   ":ISwap<CR>",                                        desc = "ISwap",                                 remap = false },

    { "<leader>p",   ":Telescope live_grep<CR>",                          desc = "project wide search",                   remap = false },

    { "<leader>S",   "<Plug>SendTestToTmux",                              desc = "project wide search word under cursor", remap = false },
    { "<leader>s",   "<Plug>SendFocusedTestToTmux",                       desc = "project wide search word under cursor", remap = false },

    { "<leader>t",   ":Telescope git_files<CR>",                          desc = "fzf",                                   remap = false },
    { "<leader>P",   ":lua require'telescope.builtin'.grep_string()<CR>", desc = "project wide search word under cursor", remap = false },

    { "<leader>d",   group = "debug adapter protocol",                    remap = false },
    { "<leader>db",  ":lua require'dap'.toggle_breakpoint()<CR>",         desc = "set breakpoint",                        remap = false },
    { "<leader>dc",  ":lua require'dap'.continue()<CR>",                  desc = "start/continue",                        remap = false },
    { "<leader>dr",  ":lua require'dap'.step_into()<CR>",                 desc = "repl",                                  remap = false },
    { "<leader>dsi", ":lua require'dap'.step_into()<CR>",                 desc = "step into",                             remap = false },
    { "<leader>dso", ":lua require'dap'.step_over()<CR>",                 desc = "step over",                             remap = false },

    { "<leader>l",   group = "lsp",                                       remap = false },
    { "<leader>la",  "<Plug>(coc-codeaction)",                            desc = "code [a]ction",                         remap = false },
    { "<leader>lc",  "<Plug>(coc-rename)",                                desc = "[c]hange name (rename)",                remap = false },
    { "<leader>ld",  "<Plug>(coc-definition)",                            desc = "definition",                            remap = false },
    { "<leader>lf",  "<Plug>(coc-fix-current)",                           desc = "quick[f]ix current",                    remap = false },
    { "<leader>lh",  ":call CocAction('doHover')<CR>",                    desc = "hover",                                 remap = false },
    { "<leader>lo",  "<Plug>(coc-format-selected)",                       desc = "format",                                remap = false },
    { "<leader>lp",  ":call CocAction('jumpDefinition', v:false)<CR>",    desc = "Peek definition",                       remap = false },
    { "<leader>lr",  ":Telescope coc references<CR>",                     desc = "references",                            remap = false },
    { "<leader>ly",  "<Plug>(coc-type-definition)",                       desc = "type definition",                       remap = false },
    {
      mode = { "x" },
      { "<leader>a",  "<Plug>(coc-codeaction-selected)", desc = "coc code action" },
      { "<leader>l",  group = "lsp" },
      { "<leader>la", "<Plug>(coc-codeaction-selected)", desc = "coc code action" },
    },
    {
      mode = { "v" },
      { "<leader>s", ":lua require('spectre').open_visual()<CR>", desc = "search/replace word under cursor" },
      { "<leader>y", '"+y',                                       desc = "yank to system registry" },
    }, {
    { "<localleader>c",  ":LogUnderCursor<CR>",                                         desc = "log word under cursor (js)" },
    { "<localleader>l",  ":PromoteToLet<CR>",                                           desc = "promote to let" },
    { "<localleader>n",  ":noh<CR>",                                                    desc = "remove search highlights" },
    { "<localleader>s",  group = "spectre" },
    { "<localleader>sp", "viw:lua require('spectre').open_file_search()<CR>",           desc = "search in current file" },
    { "<localleader>ss", ":lua require('spectre').open()<CR>",                          desc = "project wide search/replace" },
    { "<localleader>sw", ":lua require('spectre').open_visual({select_word=true})<CR>", desc = "search " },
  }, {
    { "gD",  group = "open definition" },
    { "gDs", ":call CocAction('jumpDefinition', 'split')<CR>",  desc = "in split" },
    { "gDt", ":call CocAction('jumpDefinition', 'tabe')<CR>",   desc = "in tab" },
    { "gDv", ":call CocAction('jumpDefinition', 'vsplit')<CR>", desc = "in vsplit" },
    { "gd",  "<Plug>(coc-definition)",                          desc = "definition" },
    { "gr",  ":Telescope coc references<CR>",                   desc = "references" },
  }
  })
