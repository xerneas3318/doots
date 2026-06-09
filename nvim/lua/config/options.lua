-- -----------------------------------------------------
-- Neovim Options
-- -----------------------------------------------------
local opt = vim.opt

opt.expandtab = true
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.smarttab = true
opt.autoindent = true

opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.cursorlineopt = "number"

opt.mouse = "a"
opt.encoding = "utf-8"
opt.visualbell = true
opt.scrolloff = 5
opt.fillchars = { eob = " " }
opt.laststatus = 3
opt.signcolumn = "yes"
opt.termguicolors = true

vim.cmd([[
  highlight LineNr guifg=#FFFFFF ctermfg=15
  highlight CursorLineNr guifg=#FFFFFF ctermfg=15 gui=bold
  highlight CursorLine guibg=NONE
]])
