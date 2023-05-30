return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.completion.codeium-vim" },
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  { import = "astrocommunity.editing-support.dial-nvim" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  { import = "astrocommunity.git.git-blame-nvim" },
  { import = "astrocommunity.indent.mini-indentscope" },
  { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },
  { import = "astrocommunity.media.vim-wakatime" },
  { import = "astrocommunity.motion.mini-move" },
  { import = "astrocommunity.project.nvim-spectre" },
  { import = "astrocommunity.syntax.vim-easy-align" },
  { import = "astrocommunity.test.nvim-coverage" },
  { import = "astrocommunity.utility.noice-nvim" },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 10000,
    lazy = false,

    opts = function(_, opts)
      opts.integrations = {
        neotree = true,
      }

      return opts
    end,
  },

  {
    "andythigpen/nvim-coverage",
    opts = function(_, opts)
      opts.commands = true

      return opts
    end,
  },
  {
    "folke/noice.nvim",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },

    opts = function(_, opts)
      opts.lsp = {
        progress = { enabled = false },
      }

      opts.presets = {
        command_palette = false,
      }

      return opts
    end,
  },
}
