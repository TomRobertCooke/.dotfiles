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
			"yamlls",
			"jsonls",
		},
	},
	dependencies = {
		"neovim/nvim-lspconfig",
		{ "mason-org/mason.nvim", opts = {} },
	},
}
