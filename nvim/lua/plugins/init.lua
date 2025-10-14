-- -----------------------------------------------------
-- Plugin Definitions
-- -----------------------------------------------------
return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
  },
  

  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-live-grep-args.nvim",
    },
    config = function()
      require("telescope").load_extension("live_grep_args")
    end,
  },
}

