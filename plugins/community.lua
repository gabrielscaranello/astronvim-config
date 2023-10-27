return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.color.transparent-nvim" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.completion.codeium-vim" },
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  { import = "astrocommunity.editing-support.dial-nvim" },
  { import = "astrocommunity.editing-support.multicursors-nvim" },
  { import = "astrocommunity.editing-support.stickybuf-nvim" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  { import = "astrocommunity.editing-support.treesj" },
  { import = "astrocommunity.editing-support.yanky-nvim" },
  { import = "astrocommunity.file-explorer.oil-nvim" },
  { import = "astrocommunity.git.git-blame-nvim" },
  { import = "astrocommunity.indent.mini-indentscope" },
  { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },
  { import = "astrocommunity.media.vim-wakatime" },
  { import = "astrocommunity.motion.mini-move" },
  { import = "astrocommunity.motion.nvim-surround" },
  { import = "astrocommunity.project.nvim-spectre" },
  { import = "astrocommunity.syntax.vim-easy-align" },
  { import = "astrocommunity.test.nvim-coverage" },
  { import = "astrocommunity.utility.noice-nvim" },

  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.vue" },
  { import = "astrocommunity.pack.yaml" },

  {
    "catppuccin",
    opts = {
      flavour = "mocha",
      transparent_background = false,
      integrations = {
        cmp = true,
        mason = true,
        native_lsp = { enabled = true },
        neotree = true,
        neotest = true,
        noice = true,
        notifier = true,
        treesitter = true,
        telescope = { enabled = true },
        which_key = true,
      },
    },
  },

  {
    "andythigpen/nvim-coverage",
    opts = { commands = true },
  },

  {
    "folke/noice.nvim",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },

    opts = {
      lsp = { progress = { enabled = false } },
      presets = { command_palette = false },
    },
  },
}
