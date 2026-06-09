return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-live-grep-args.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
  config = function()
    local telescope = require("telescope")

    telescope.setup({
      defaults = {
        path_display = { "smart" },
      },
    })

    telescope.load_extension("fzf")
    telescope.load_extension("live_grep_args")

    local builtin = require("telescope.builtin")
    local keymap = vim.keymap
    local opts = { noremap = true, silent = true }

    keymap.set("n", "<leader>ff", builtin.find_files, opts)
    keymap.set("n", "<leader>fs", builtin.live_grep, opts)
    keymap.set("n", "<leader>fh", builtin.oldfiles, opts)
    keymap.set("n", "<leader>fb", builtin.buffers, opts)
    keymap.set("n", "<leader>fk", builtin.keymaps, opts)
  end,
}
