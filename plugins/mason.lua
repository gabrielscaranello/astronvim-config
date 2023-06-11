-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = {
        "bashls",
        "docker_compose_language_service",
        "dockerls",
        "html",
        "jsonls",
        "lua_ls",
        "marksman",
        "tsserver",
        "volar",
      }
    end,
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = {
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
      }

      opts.handlers = nil

      return opts
    end,
  },

  {
    "jose-elias-alvarez/null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "mason.nvim",
    },
    config = function()
      local null_ls = require "null-ls"
      local opts = require "user.utils.null-ls"

      null_ls.setup { sources = opts.sources, on_attach = opts.on_attach }
    end,
  },

  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = {}
    end,
  },
}
