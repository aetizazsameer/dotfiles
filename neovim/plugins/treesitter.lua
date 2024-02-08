return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    if vim.loop.os_uname().sysname == "Windows_NT" then
      require("nvim-treesitter.install").compilers = {
        "clang"
      }
    end
    config.setup({
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
      }  
    })
  end
}

