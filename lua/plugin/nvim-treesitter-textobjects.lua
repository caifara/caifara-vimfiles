require'nvim-treesitter.configs'.setup {
  textobjects = {
    -- swap = {
    --   enable = true,
    --   swap_next = {
    --     ["<leader>m"] = "@parameter.inner",
    --   },
    --   swap_previous = {
    --     ["<leader>M"] = "@parameter.inner",
    --   },
    -- },
    select = {
      enable = true,

      -- Automatically jump forward to textobj, similar to targets.vim 
      lookahead = true,

      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner",
        ["ab"] = "@block.outer",
        ["ib"] = "@block.inner",
        ["ap"] = "@parameter.outer",
        ["ip"] = "@parameter.inner",

        -- -- Or you can define your own textobjects like this
        -- ["iF"] = {
        --   python = "(function_definition) @function",
        --   cpp = "(function_definition) @function",
        --   c = "(function_definition) @function",
        --   java = "(method_declaration) @function",
        -- },
      },
    },
  },
}
