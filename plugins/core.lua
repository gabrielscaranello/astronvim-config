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
      opts.window.width = 45

      return opts
    end,
  },
}
