local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Telescope quick access
keymap("n", "<C-p>", function()
  require("telescope.builtin").find_files()
end, { desc = "Find Files" })

-- Neo-tree
keymap("n", "<C-n>", ":Neotree filesystem reveal left<CR>", opts)
keymap("n", "<leader>e", ":Neotree toggle<CR>", opts)

-- Clear search highlighting
keymap("n", "g/", ":noh<CR>", opts)

-- Disable middle mouse paste
keymap("n", "<MiddleMouse>", "<Nop>")
keymap("i", "<MiddleMouse>", "<Nop>")
keymap("n", "<2-MiddleMouse>", "<Nop>")
keymap("i", "<2-MiddleMouse>", "<Nop>")
keymap("n", "<3-MiddleMouse>", "<Nop>")
keymap("i", "<3-MiddleMouse>", "<Nop>")
keymap("n", "<4-MiddleMouse>", "<Nop>")
keymap("i", "<4-MiddleMouse>", "<Nop>")

-- Window splits
keymap("n", "<leader>v", "<cmd>vsplit<cr>", opts)
keymap("n", "<leader>h", "<cmd>split<cr>", opts)

-- Save / quit shortcuts
keymap("n", "<leader>w", "<cmd>w<cr>", opts)
keymap("n", "<leader>q", "<cmd>q<cr>", opts)

-- System clipboard yank / paste
keymap({ "n", "v" }, "<leader>y", '"+y', { desc = "Yank to clipboard" })
keymap("n", "<leader>Y", '"+Y', { desc = "Yank line to clipboard" })
keymap({ "n", "v" }, "<leader>p", '"+p', { desc = "Paste from clipboard" })
keymap({ "n", "v" }, "<leader>P", '"+P', { desc = "Paste before from clipboard" })
