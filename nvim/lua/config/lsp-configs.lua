local cmp_lsp = require("cmp_nvim_lsp")
cmp_lsp.setup()
vim.lsp.config("*", {
	capabilities = cmp_lsp.default_capabilities(),
})

vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
			},
		},
	},
})
