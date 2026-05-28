return {

	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",

	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		"nvim-tree/nvim-web-devicons",
		"nvim-telescope/telescope.nvim",
	},

	lazy = false,

	opts = {
		filesystem = {
			follow_current_file = {
				enabled = true,
				use_libuv_file_watcher = true,
			},
			filtered_items = {
				visible = true,
				hide_dotfiles = false,
				hide_gitignored = false,
			},
		},
		popup_border_style = "rounded",
		window = {
			position = "float",
		},
	},

	config = function(_, opts)
		-- require("transparent").clear_prefix("NeoTree")
		require("neo-tree").setup(opts)
	end,
}
