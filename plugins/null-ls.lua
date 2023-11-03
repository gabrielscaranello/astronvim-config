return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, config)
    local builtins = require "null-ls.builtins"

    config.sources = {
      -- Set diagnostics
      builtins.diagnostics.editorconfig_checker.with {
        condition = function(utils) return utils.root_has_file { ".editorconfig" } end,
      },

      -- Set code actions

      -- Set formatters
    }

    return config
  end,
}
