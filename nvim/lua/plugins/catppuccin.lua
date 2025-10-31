return
  {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = false,
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      integrations = {
        telescope = true,
        treesitter = true,
        which_key = true,
        cmp = true,
        gitsigns = true,
      },
    })
    vim.cmd.colorscheme("catppuccin")
  end,
}
