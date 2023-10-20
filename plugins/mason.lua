return {
  {
    "williamboman/mason-lspconfig.nvim",
    opts = function(_, opts)
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        "bashls",
        "docker_compose_language_service",
        "dockerls",
        "html",
        "jsonls",
        "lua_ls",
        "marksman",
        "tsserver",
        "volar",
      })
    end,
  },

  {
    "jay-babu/mason-null-ls.nvim",
    opts = function(_, opts)
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        "beautysh",
        "checkmake",
        "dotenv_linter",
        "editorconfig_checker",
        "eslint_d",
        "jq",
        "jsonlint",
        "markdownlint",
        "prettierd",
        "stylelint",
        "stylua",
      })
    end,
  },

  {
    "jay-babu/mason-nvim-dap.nvim",
    opts = function(_, opts)
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {})
    end,
  },
}
