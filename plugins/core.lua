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
    opts = function(_, opts)
      local events = require "neo-tree.events"

      local function on_file_remove(args)
        local ts_clients = vim.lsp.get_active_clients { name = "tsserver" }
        for _, ts_client in ipairs(ts_clients) do
          ts_client.request("workspace/executeCommand", {
            command = "_typescript.applyRenameFile",
            arguments = {
              {
                sourceUri = vim.uri_from_fname(args.source),
                targetUri = vim.uri_from_fname(args.destination),
              },
            },
          })
        end
      end

      opts.event_handlers = {
        {
          event = events.FILE_MOVED,
          handler = on_file_remove,
        },
        {
          event = events.FILE_RENAMED,
          handler = on_file_remove,
        },
      }

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
