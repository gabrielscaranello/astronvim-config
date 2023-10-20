return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, config)
    local builtins = require "null-ls.builtins"

    config.sources = {
      -- Set diagnostics
      builtins.diagnostics.editorconfig_checker.with {
        condition = function(utils) return utils.root_has_file { ".editorconfig" } end,
      },
      builtins.diagnostics.checkmake,
      builtins.diagnostics.dotenv_linter,
      builtins.diagnostics.eslint_d,
      builtins.diagnostics.jsonlint,
      builtins.diagnostics.markdownlint,
      builtins.diagnostics.stylelint,

      -- Set code actions
      builtins.code_actions.eslint_d,

      -- Set formatters
      builtins.formatting.beautysh,
      builtins.formatting.stylua,
      builtins.formatting.prettierd,
      builtins.formatting.eslint_d,
      builtins.formatting.markdownlint,
      builtins.formatting.jq,
    }

    return config
  end,
}
