return {
{
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    lazy = false, -- neo-tree will lazily load itself
    config = function()
    require("neo-tree").setup({
      filesystem = {
        filtered_items = {
          hide_dotfiles = false, -- show hidden files
          hide_gitignored = false,
        },
      },
    })
    
    -- Keybind: Ctrl+n to reveal NeoTree filesystem on the left
    vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', { noremap = true, silent = true })
     end,
  }
}

