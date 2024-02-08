return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "clangd",
          "cssls",
          "elixirls",
          "golangci_lint_ls",
          "html",
          "jdtls",
          "tsserver",
          "texlab",
          "lua_ls",
          "marksman",
          "matlab_ls",
          "pylsp",
          "rust_analyzer",
          "sqlls",
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.clangd.setup({})
      lspconfig.cssls.setup({})
      lspconfig.elixirls.setup({})
      lspconfig.golangci_lint_ls.setup({})
      lspconfig.html.setup({})
      lspconfig.jdtls.setup({})
      lspconfig.tsserver.setup({})
      lspconfig.texlab.setup({})
      lspconfig.lua_ls.setup({})
      lspconfig.marksman.setup({})
      lspconfig.matlab_ls.setup({})
      lspconfig.pylsp.setup({})
      lspconfig.rust_analyzer.setup({})
      lspconfig.sqlls.setup({})

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set({ "n", "v" }, "ga", vim.lsp.buf.code_action, {})
    end,
  },
}
