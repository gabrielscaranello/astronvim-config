local builtins = require "null-ls.builtins"

local lsp_formatting = function(bufnr)
  vim.lsp.buf.format {
    filter = function(client) return client.name == "null-ls" end,
    bufnr = bufnr,
  }
end

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

return {
  on_attach = function(client, bufnr)
    if client.supports_method "textDocument/formatting" then
      vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function() lsp_formatting(bufnr) end,
      })
    end
  end,

  sources = {
    builtins.diagnostics.editorconfig_checker.with {
      condition = function(utils) return utils.root_has_file { ".editorconfig" } end,
    },
    builtins.diagnostics.checkmake,
    builtins.diagnostics.dotenv_linter,
    builtins.diagnostics.eslint_d,
    builtins.diagnostics.jsonlint,
    builtins.diagnostics.markdownlint,
    builtins.diagnostics.stylelint,

    builtins.code_actions.eslint_d,
    require "typescript.extensions.null-ls.code-actions",

    builtins.formatting.beautysh,
    builtins.formatting.stylua,
    builtins.formatting.prettierd,
    builtins.formatting.eslint_d,
    builtins.formatting.markdownlint,
    builtins.formatting.jq,
  },
}
