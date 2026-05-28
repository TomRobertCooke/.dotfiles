return {

	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	opts = {},

	config = function()
		require("tokyonight").setup({
			transparent = vim.g.transparent_enabled,

			on_highlights = function(hl, c)
				-- 				-- Borderless Telescope
				-- 				local prompt = "#2d3149"
				-- 				hl.TelescopeNormal = {
				-- 					bg = c.bg_dark,
				-- 					fg = c.fg_dark,
				-- 				}
				-- 				hl.TelescopeBorder = {
				-- 					bg = c.bg_dark,
				-- 					fg = c.bg_dark,
				-- 				}
				-- 				hl.TelescopePromptNormal = {
				-- 					bg = prompt,
				-- 				}
				-- 				hl.TelescopePromptBorder = {
				-- 					bg = prompt,
				-- 					fg = prompt,
				-- 				}
				-- 				hl.TelescopePromptTitle = {
				-- 					bg = prompt,
				-- 					fg = prompt,
				-- 				}
				-- 				hl.TelescopePreviewTitle = {
				-- 					bg = c.bg_dark,
				-- 					fg = c.bg_dark,
				-- 				}
				-- 				hl.TelescopeResultsTitle = {
				-- 					bg = c.bg_dark,
				-- 					fg = c.bg_dark,
				-- 				}
				-- Neotree border match
				hl.NeoTreeFloatBorder = {
					bg = c.bg_dark,
					fg = c.border_highlight,
				}
				hl.NeoTreeFloatTitle = {
					bg = c.bg_dark,
					fg = c.border_highlight,
				}
				-- 				-- Borderless Harpoon
				-- 				hl.HarpoonNormal = {
				-- 					bg = c.bg,
				-- 					fg = c.fg,
				-- 				}
				-- 				hl.HarpoonBorder = {
				-- 					bg = c.bg,
				-- 					fg = c.bg,
				-- 				}
			end,
		})
		vim.cmd("colorscheme tokyonight-night")
	end,
}
