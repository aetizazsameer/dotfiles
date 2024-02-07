----- personal changes ----------------------------------------------
-- set language to English on startup
vim.api.nvim_exec('language en_US', true)
-- set preferred shell to bash
vim.opt.shell='bash'
-- enable line numbers
vim.wo.number = true
vim.o.laststatus = 2
-- convert tabs to spaces
vim.o.expandtab = true
-- spaces per tab
vim.o.tabstop = 2
vim.o.shiftwidth = 2
-- leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

---- lazy.nvim setup ------------------------------------------------
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

---- plugin setup ---------------------------------------------------
local plugins = {
  { 
    "folke/neoconf.nvim", 
    cmd = "Neoconf"
  },
  {
    "folke/neodev.nvim",	
  },
  { 
    "folke/tokyonight.nvim", 
    lazy = false, 
    priority = 1000, 
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  {
	  "folke/which-key.nvim",
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
  },
  {
    "nvim-telescope/telescope.nvim", 
    tag = "0.1.5",
    dependencies = {
      "nvim-lua/plenary.nvim"
    }
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate"
  },
  {
    "terrortylor/nvim-comment",
  },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {},
  },
}
require("lazy").setup(plugins)
require("nvim_comment").setup()

---- telescope setup ------------------------------------------------
local telescope = require("telescope.builtin")
vim.keymap.set("n", "<C-p>", telescope.find_files, {})
vim.keymap.set("n", "<leader>fg", telescope.live_grep, {})

---- treesitter setup -----------------------------------------------
local treesitter = require("nvim-treesitter.configs")
if vim.loop.os_uname().sysname == "Windows_NT" then
  require("nvim-treesitter.install").compilers = {
    "clang"
  }
end
treesitter.setup({
  ensure_installed = { 
    "c", "c_sharp", "cpp", "css", "elixir", "glsl", "go", "heex",
    "html", "java", "javascript", "latex", "lua", "make", "markdown",
    "markdown_inline", "matlab", "ocaml", "python", "query", "rust",
    "sql", "typescript", "verilog", "vim", "vimdoc"
  },
  sync_install = false,
  highlight = {
    enable = true 
  },
  indent = {
    enable = true 
  },  
})
vim.keymap.set('n', "<C-n>", ":Neotree filesystem reveal right toggle<CR>")

---- colorscheme ----------------------------------------------------
vim.cmd.colorscheme "tokyonight-night"
