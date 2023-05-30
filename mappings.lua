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
