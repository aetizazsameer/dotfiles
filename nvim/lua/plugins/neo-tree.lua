return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    vim.keymap.set("n", "gn", ":Neotree filesystem reveal right toggle<CR>")
    -- open neotree at startup
    vim.api.nvim_create_autocmd("VimEnter", {
      pattern = "*",
      group = vim.api.nvim_create_augroup("NeotreeOnOpen", { clear = true }),
      once = true,
      callback = function()
        if vim.fn.argc() <= 1 then
          vim.cmd("Neotree filesystem reveal right")
          vim.cmd("wincmd w")
        end
      end,
    })
    -- open neotree on new tab
    vim.api.nvim_create_autocmd("TabNew", {
      group = vim.api.nvim_create_augroup("NeotreeOnNewTab", { clear = true }),
      callback = function()
        vim.cmd("Neotree filesystem reveal right")
        vim.cmd("wincmd w")
      end,
    })
  end,
}
