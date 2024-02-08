-- set language to English on startup
vim.api.nvim_exec('language en_US', true)
-- set preferred shell to bash
vim.opt.shell='bash'
-- enable line numbers
vim.wo.number = true
-- convert tabs to spaces
vim.o.expandtab = true
-- spaces per tab
vim.o.tabstop = 2
vim.o.shiftwidth = 2
-- leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "
