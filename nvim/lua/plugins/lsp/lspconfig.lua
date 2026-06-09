return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "hrsh7th/cmp-nvim-lsp",
    { "antosha417/nvim-lsp-file-operations", config = true },
    { "folke/neodev.nvim", opts = {} },
  },
  config = function()
    local cmp_nvim_lsp = require("cmp_nvim_lsp")
    local keymap = vim.keymap

    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("UserLspConfig", {}),
      callback = function(ev)
        local function opts(desc)
          return { desc = desc, buffer = ev.buf, silent = true }
        end

        keymap.set("n", "K", vim.lsp.buf.hover, opts("Show documentation"))
        keymap.set("n", "gR", "<cmd>Telescope lsp_references<cr>", opts("Show LSP references"))
        keymap.set("n", "gD", vim.lsp.buf.declaration, opts("Go to declaration"))
        keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<cr>", opts("Show LSP definitions"))
        keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<cr>", opts("Show LSP implementations"))
        keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<cr>", opts("Show LSP type definitions"))
        keymap.set({ "n", "v" }, "ga", vim.lsp.buf.code_action, opts("Show available code actions"))
        keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts("Rename symbol"))
      end,
    })

    local capabilities = cmp_nvim_lsp.default_capabilities()

    vim.lsp.config("*", {
      capabilities = capabilities,
    })

    vim.lsp.config("lua_ls", {
      settings = {
        Lua = {
          diagnostics = { globals = { "vim" } },
          completion = { callSnippet = "Replace" },
        },
      },
    })

    vim.lsp.config("pylsp", {
      settings = {
        pylsp = {
          plugins = {
            pycodestyle = { enabled = true },
            pyflakes = { enabled = true },
            pylint = { enabled = true },
            mccabe = { enabled = true },
            rope_completion = { enabled = true },
          },
        },
      },
    })

    vim.lsp.config("clangd", {
      settings = {
        clangd = {
          fallbackFlags = { "-std=c11" },
        },
      },
    })

    vim.lsp.config("rust_analyzer", {
      settings = {
        ["rust-analyzer"] = {
          cargo = { allFeatures = true },
          checkOnSave = { command = "clippy" },
        },
      },
    })

    vim.lsp.enable({
      "lua_ls",
      "html",
      "cssls",
      "ts_ls",
      "pylsp",
      "clangd",
      "rust_analyzer",
    })
  end,
}
