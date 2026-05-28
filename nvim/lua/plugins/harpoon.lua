return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
	},

	config = function()
		local harpoon = require("harpoon")

		-- Basic setup
		harpoon:setup()

		-- Define your options and set border to "none"
		local toggle_opts = {
			title = " Harpoon ",
			title_pos = "center",
			border = "rounded",
		}

		-- Bind the keymap to open the menu with the custom options
		vim.keymap.set("n", "<C-e>", function()
			harpoon.ui:toggle_quick_menu(harpoon:list(), toggle_opts)
		end, { desc = "Open harpoon quick menu" })
	end,
}
