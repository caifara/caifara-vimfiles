-- require'nvim-treesitter.configs'.setup {
--   indent = {
--     enable = true,
--     disable = { 'yaml' }
--   }
-- }
--
-- require "nvim-treesitter.configs".setup {
--   playground = {
--     enable = true,
--     disable = {},
--     updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
--     persist_queries = false -- Whether the query persists across vim sessions
--   }
-- }

require'nvim-treesitter.configs'.setup {
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
}

require'nvim-treesitter.configs'.setup {
  highlight = { enable = true },
  ensure_installed = { 
    "bash",
    "css",
    "dockerfile",
    "html",
    "json",
    "lua",
    "markdown",
    "ruby",
    "regex",
    "scss",
    "tsx",
    "typescript",
    "vim",
    "yaml",
  },
}
