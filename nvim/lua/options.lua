-- set language to English on startup
vim.api.nvim_exec("language en_US", true)
-- set preferred shell to bash
vim.opt.shell = "bash"
vim.opt.shellcmdflag = "-c"
vim.opt.shellquote = ""
vim.g.terminal_emulator="bash"
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
-- center cursor while scrolling
vim.api.nvim_set_keymap("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true })
-- toggle window shortcut
vim.keymap.set("n", "<C-n>", "<C-w>w")
-- enable cursorline in insert mode
local cursorlinegroup = vim.api.nvim_create_augroup("CursorLineInsert", { clear = true })
vim.api.nvim_create_autocmd("InsertEnter", {
	pattern = "*",
	group = cursorlinegroup,
	callback = function()
		vim.opt.cursorline = true
	end,
})
vim.api.nvim_create_autocmd("InsertLeave", {
	pattern = "*",
	group = cursorlinegroup,
	callback = function()
		vim.opt.cursorline = false
	end,
})
