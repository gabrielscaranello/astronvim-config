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
        status.component.mode(),
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
    opts = function(_, opts)
      opts.window.width = 35
      opts.window.position = "left"

      return opts
    end,
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    opts = function(_, opts)
      opts.show_current_context = false

      return opts
    end,
  },

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
    opts = function(_, opts)
      -- use codicons preset
      opts.preset = "codicons"
      -- set some missing symbol types
      opts.symbol_map = {
        Array = "",
        Boolean = "",
        Key = "",
        Namespace = "",
        Null = "",
        Number = "",
        Object = "",
        Package = "",
        String = "",
      }
      return opts
    end,
  },
}
