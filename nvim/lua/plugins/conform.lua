return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "isort", "black" },
			c = { "clang-format" },
			cpp = { "clang-format" },
			bash = { "shfmt" },
		},
		lsp_fallback = true,
		format_on_save = {
			lsp_fallback = true,
		},
	},
}
