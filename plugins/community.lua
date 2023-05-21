return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.colorscheme.tokyonight" },
  { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },
  { import = "astrocommunity.completion.codeium-vim" },
  { import = "astrocommunity.utility.noice-nvim" },
  { import = "astrocommunity.indent.mini-indentscope" },

  {
    "folke/tokyonight.nvim",
    config = function()
      require("tokyonight").setup {
        style = "night",
        terminal_colors = true,
        transparent = true,
        dim_inactive = true,
        lualine_bold = true,
        styles = {
          sidebars = "transparent",
          floats = "dark",
        },
      }
    end,
  },
}
