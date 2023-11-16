-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    -- L = {
    --   function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
    --   desc = "Next buffer",
    -- },
    -- H = {
    --   function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
    --   desc = "Previous buffer",
    -- },

    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command

    -- dealing with buffers
    ["<TAB>"] = { ":bnext<cr>", desc = "Move to the next buffer" },
    ["<S-TAB>"] = { ":bprevious<cr>", desc = "Move to the previous buffer" },
    ["<leader>w"] = { ":bd<cr>", desc = "Close open buffer" },
  },
  i = {
    -- Add keybindings for 'kj' and 'jk' to press the escape key
    ["kj"] = { "<esc>", desc = "Press Escape" },
    ["jk"] = { "<esc>", desc = "Press Escape" },
  },
  v = {
    -- moving multiple lines up and down using K and J
    ["K"] = { ":move '<-2<CR>gv-gv", desc = "Move selected lines up" },
    ["J"] = { ":m '>+1<CR>gv-gv", desc = "Move selected lines down" },

    -- temporary solution to overwrite 'x' not deleting selected text caused by the 'leap' plugin
    ["x"] = {
      function()
        vim.cmd([[normal! d]])
      end,
      desc = "Delete selected text",
    },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
