-- -----------------------------------------------------
-- Core Neovim Config (Modular)
-- -----------------------------------------------------

-- Leader key
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"



-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none", "--branch=stable",
    "https://github.com/folke/lazy.nvim.git", lazypath
  })
end
vim.opt.rtp:prepend(lazypath)


require("lazy").setup("plugins")
-- Load base config
require("config.options")
require("config.keymaps")


-- Load plugins

