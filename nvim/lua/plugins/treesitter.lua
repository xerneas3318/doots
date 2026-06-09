return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    require("nvim-treesitter.configs").setup({
      auto_install = true,
      sync_install = false,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = { enable = true },
      autotag = { enable = true },
      ensure_installed = {
        "lua",
        "vim",
        "vimdoc",
        "javascript",
        "typescript",
        "tsx",
        "python",
        "html",
        "css",
        "json",
        "yaml",
        "markdown",
        "markdown_inline",
        "bash",
        "dockerfile",
        "gitignore",
        "c",
      },
      ignore_install = {},
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-Space>",
          node_incremental = "<C-Space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })
  end,
}
