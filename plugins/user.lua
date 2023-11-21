return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  -- {
  --   "easymotion/vim-easymotion",
  --   keys = {
  --     { "<leader>m", "<Plug>(easymotion-overwin-w)", desc = "Trigger easymotion" },
  --   },
  -- },
  {
    "tpope/vim-repeat",
  },
  {
    "ggandor/leap.nvim",
  },
  {
    "rhysd/clever-f.vim",
    event = "User AstroFile",
  },
  {
    "itchyny/vim-cursorword",
    event = "User AstroFile",
  },
  {
    "terryma/vim-multiple-cursors",
    event = "User AstroFile",
  },
  {
    "alvan/vim-closetag",
    -- lazy = false
    event = "User VeryLazy",
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    event = "User AstroFile",
  }
}
