-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)

local utils = require "astronvim.utils"

local maps = {
  n = {
    ["<C-a>"] = { "ggVG", desc = "Select all" },
    [";"] = { ":", desc = "Call :" },
    ["<leader><space>"] = { ":noh<cr>", desc = "No highlight" },
    ["L"] = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    ["H"] = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },
  },
  v = {},
  t = {},
  i = {
    ["<C-s>"] = { "<C-O>:w<CR>", desc = "Write file" },
  },
}

if vim.fn.executable "lazydocker" == 1 then
  maps.n["<leader>td"] = { function() utils.toggle_term_cmd "lazydocker" end, desc = "ToggleTerm lazydocker" }
end

return maps
