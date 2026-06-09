return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    require("todo-comments").setup({
      keywords = {
        TODO = { icon = " ", color = "#317fbf" },
      },
    })
  end,
}
