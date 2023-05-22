-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        "bashls",
        "docker_compose_language_service",
        "dockerls",
        "emmet_ls",
        "html",
        "jsonls",
        "lua_ls",
        "marksman",
        "tsserver",
        "volar",
      })
    end,
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        "beautysh",
        "checkmake",
        "commitlint",
        "dotenv_linter",
        "editorconfig_checker",
        "eslint_d",
        "jsonlint",
        "prettierd",
        "stylelint",
        "stylua",
      })

      opts.handlers = {
        editorconfig_checker = function()
          require("null-ls").register(require("null-ls").builtins.diagnostics.editorconfig_checker.with {
            condition = function(utils) return utils.root_has_file { ".editorconfig" } end,
          })
        end,
      }

      return opts
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {})
    end,
  },
}
