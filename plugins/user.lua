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
    "rhysd/clever-f.vim",
    event = "User AstroFile",
  },
  {
    "itchyny/vim-cursorword",
    event = "User AstroFile",
  },
  {
    "mg979/vim-visual-multi",
    event = "User AstroFile",
  },
  {
    "folke/flash.nvim",
    event = "VeryLazy",
  },
}
