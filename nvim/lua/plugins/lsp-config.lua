return {
  { "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      local lspconfig = require("lspconfig")
      lspconfig.ts_ls.setup({
        capabilities = capabilities
      })
      lspconfig.elixirls.setup({
        capabilities = capabilities,
        cmd = { "/usr/lib/elixir-ls/language_server.sh" };
      })
      lspconfig.marksman.setup({
        capabilities = capabilities
      })
      lspconfig.gopls.setup({
        capabilities = capabilities
      })
      lspconfig.terraformls.setup({
        capabilities = capabilities
      })
      lspconfig.tflint.setup({
        capabilities = capabilities
      })
      lspconfig.rust_analyzer.setup({
        capabilities = capabilities
      })
      lspconfig.htmx.setup({
        capabilities = capabilities
      })
      lspconfig.pyright.setup({
        capabilities = capabilities
      })
      lspconfig.solargraph.setup({
        capabilities = capabilities
      })
      lspconfig.html.setup({
        capabilities = capabilities
      })
      lspconfig.dockerls.setup({
        capabilities = capabilities,
        root_pattern = "Dockerfile, dockerfile"
      })
      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
      vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, {})
    end,
  },
}
