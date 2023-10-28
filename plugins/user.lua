return {
  {
    "arnamak/stay-centered.nvim",
    event = "VeryLazy",
    config = function() require("stay-centered").setup() end,
  },
  {
    "andythigpen/nvim-coverage",
    keys = {
      {
        "<leader>lc",
        function()
          local coverage = require "coverage"

          if vim.g.coverage_showing then
            coverage.hide()
          else
            coverage.load(true)
            coverage.show()
          end

          vim.g.coverage_showing = not vim.g.coverage_showing
        end,
        desc = "Coverage",
      },
      {
        "<leader>lC",
        function()
          local coverage = require "coverage"
          if not vim.g.coverage_showing then coverage.load(false) end
          coverage.summary()
        end,
        desc = "Coverage Summary",
      },
    },
  },
}
