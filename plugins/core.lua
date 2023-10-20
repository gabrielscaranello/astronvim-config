return {
  -- customize alpha options
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      opts.section.header.val = {
        "                 ##                 ",
        "                ####                ",
        "               ######               ",
        "              ########              ",
        "             ##########             ",
        "            ############            ",
        "           ##############           ",
        "          ################          ",
        "         ##################         ",
        "        ####################        ",
        "       ######################       ",
        "      #########      #########      ",
        "     ##########      ##########     ",
        "    ###########      ###########    ",
        "   ##########          ##########   ",
        "  #######                  #######  ",
        " ####                          #### ",
        "###                              ###",
      }
      return opts
    end,
  },

  {
    "rebelot/heirline.nvim",
    opts = function(_, opts)
      local status = require "astronvim.utils.status"

      opts.statusline = {
        hl = { fg = "fg", bg = "bg" },
        status.component.mode { mode_text = { padding = { left = 1, right = 1 } } },
        status.component.git_branch(),
        status.component.git_diff(),
        status.component.fill(),
        status.component.cmd_info(),
        status.component.fill(),
        status.component.diagnostics(),
        status.component.file_info { filetype = {}, filename = false, file_modified = false },
        status.component.treesitter(),
        status.component.nav(),
        status.component.mode { surround = { separator = "right" } },
      }

      return opts
    end,
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        width = 35,
        position = "left",
      },
    },
  },

  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },

  {
    "rcarriga/nvim-notify",
    enabled = false,
    opts = function(_, opts)
      opts.background_colour = "#000000"
      return opts
    end,
  },

  {
    "onsails/lspkind.nvim",
    opts = {
      preset = "codicons",
      symbol_map = {
        Array = "",
        Boolean = "",
        Key = "",
        Namespace = "",
        Null = "",
        Number = "",
        Object = "",
        Package = "",
        String = "",
      },
    },
  },

  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require "cmp"

      opts.sources = cmp.config.sources {
        { name = "nvim_lsp", priority = 1000 },
        { name = "luasnip", priority = 750 },
        { name = "buffer", priority = 500 },
        { name = "path", priority = 250 },
      }

      return opts
    end,
  },
}
