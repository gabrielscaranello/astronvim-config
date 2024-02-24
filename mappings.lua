-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)

local utils = require "astronvim.utils"

local maps = {
  n = {
    [";"] = { ":", desc = "Call :" },
    ["<leader><space>"] = { "<cmd>noh<cr>", desc = "No highlight" },
    ["L"] = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    ["H"] = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },
    ["<leader>lk"] = { "<cmd>LspRestart<cr>", desc = "Restart LSP" },
    ["<leader>gD"] = { "<cmd>DiffviewOpen<cr>", desc = "Open Diffview" },
    ["<leader>gx"] = { "<cmd>DiffviewClose<cr>", desc = "Close Diffview" },
    ["d"] = { '"_d' },
    ["c"] = { '"_c' },
  },
  v = {
    ["d"] = { '"_d' },
    ["c"] = { '"_c' },
  },
  t = {},
  i = {
    ["<C-s>"] = { "<Esc><cmd>w<cr>", desc = "Write file" },
  },
}

if vim.fn.executable "lazydocker" == 1 then
  maps.n["<leader>td"] = { function() utils.toggle_term_cmd "lazydocker" end, desc = "ToggleTerm lazydocker" }
end

return maps
