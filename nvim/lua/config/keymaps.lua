-- -----------------------------------------------------
-- Keymaps
-- -----------------------------------------------------
local keymap = vim.keymap.set

-- Lazy-load Telescope when you press keys that use it
keymap("n", "<C-p>", function()
  require("telescope.builtin").find_files()
end, { desc = "Find Files" })

keymap("n", "<leader>fg", function()
  require("telescope").extensions.live_grep_args.live_grep_args()
end, { desc = "Live Grep (args)" })

