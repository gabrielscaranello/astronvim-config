return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
      "bash",
      "dockerfile",
      "html",
      "json",
      "lua",
      "make",
      "markdown_inline",
      "scss",
      "tsx",
      "typescript",
      "vue",
    })
  end,
}
