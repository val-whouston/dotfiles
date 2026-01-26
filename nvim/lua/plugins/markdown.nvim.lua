return {
  "tadmccorkle/markdown.nvim",
  ft = "markdown", -- or 'event = "VeryLazy"'
  keys = {
    {
      "<cr>",
      "<cmd>MDListItemBelow<cr>",
      mode = { "i" },
    },
  },
  opts = {
    -- configuration here or empty for defaults
  },
}

