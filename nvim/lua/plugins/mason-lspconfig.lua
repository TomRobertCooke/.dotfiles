return {

	"mason-org/mason-lspconfig.nvim",
	opts = {
		ensure_installed = {
			"lua_ls",
			"stylua",
			"cmake",
			"clangd",
			"bashls",
			"basedpyright",
			"markdown_oxide",
			"arduino_language_server",
			"rust_analyzer",
			"jdtls",
		},
		automatic_enable = {
			"bashls",
			"lua_ls",
			"stylua",
			"cmake",
			"clangd",
			"basedpyright",
		},
	},
	dependencies = {
		"neovim/nvim-lspconfig",
		{ "mason-org/mason.nvim", opts = {} },
	},
}
