return {
	"nvimtools/none-ls.nvim",
	config = function()
		local config = require("null-ls")
		config.setup({
			sources = {
				config.builtins.diagnostics.eslint_d,
				config.builtins.diagnostics.djlint,
				config.builtins.diagnostics.markdownlint,
				config.builtins.diagnostics.golangci_lint,
				config.builtins.formatting.black,
				config.builtins.formatting.isort,
				config.builtins.formatting.autopep8,
				config.builtins.formatting.beautysh,
				config.builtins.formatting.clang_format,
				config.builtins.formatting.djlint,
				config.builtins.formatting.goimports,
				config.builtins.formatting.golines,
				config.builtins.formatting.markdownlint,
				config.builtins.formatting.prettier,
				config.builtins.formatting.reorder_python_imports,
				config.builtins.formatting.rustfmt,
				config.builtins.formatting.stylua,
				config.builtins.formatting.standardts,
			},
		})

		vim.keymap.set("n", "<C-f>", vim.lsp.buf.format, {})
	end,
}
