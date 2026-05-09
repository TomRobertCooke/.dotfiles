return {

	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },

	config = function()
		local custom_theme = require("lualine.themes.auto")
		custom_theme.normal.c.bg = "#2d314980"
		custom_theme.inactive.c.bg = "#2d314980"

		require("lualine").setup({
			options = {
				theme = custom_theme,
			},
		})
	end,
}
