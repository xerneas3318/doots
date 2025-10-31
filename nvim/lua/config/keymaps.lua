local keymap = vim.keymap.set

keymap("n", "<C-p>", function()
  require("telescope.builtin").find_files()
end, { desc = "Find Files" })

vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', {})

