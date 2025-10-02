return {

	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },

	config = function()
		local custom_theme = require("lualine.themes.auto")
		custom_theme.normal.c.bg = "None"
		custom_theme.inactive.c.bg = "None"
		require("lualine").setup({
			options = {
				theme = custom_theme,
			},
		})
	end,
}
