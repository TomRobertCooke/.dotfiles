return {
	"nvimtools/none-ls.nvim",
	opts = function(_, opts)
		local null_ls = require("null-ls")

		opts.sources = {
			null_ls.builtins.formatting.stylua,
			null_ls.builtins.formatting.black,
			null_ls.builtins.formatting.isort,
		}

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
