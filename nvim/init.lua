vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = false
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.swapfile = false
vim.o.winborder = "rounded"
vim.o.signcolumn = "yes"
vim.o.confirm = true
vim.o.cursorline = true
vim.o.scrolloff = 10

vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.have_nerd_font = true

vim.keymap.set("t", "<esc><esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

vim.keymap.set("n", "<esc>", "<cmd>nohlsearch<CR>", { desc = "Remove search highlights" })
vim.keymap.set("n", "<leader>w", "<C-w>", { desc = "<C-w> - Gotta take care of my pinky" })

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.hl.on_yank()
	end,
})

-- Plugins
vim.pack.add({
	-- theming
	{ src = "https://github.com/xiyaowong/transparent.nvim" },
	{ src = "https://github.com/rose-pine/neovim", name = "rose-pine" },

	-- file system editing/navigation
	{ src = "https://github.com/stevearc/oil.nvim" },

	-- treesitter parser installs
	{ src = "https://github.com/romus204/tree-sitter-manager.nvim" },

	-- lsp installation + configs
	{ src = "https://github.com/mason-org/mason.nvim" },
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/mason-org/mason-lspconfig.nvim" },

	-- telescope + dependencies
	{ src = "https://github.com/nvim-lua/plenary.nvim" },
	{ src = "https://github.com/nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	{ src = "https://github.com/nvim-telescope/telescope.nvim", version = "master" },

	-- completions
	{ src = "https://github.com/saghen/blink.lib" },
	{ src = "https://github.com/saghen/blink.cmp" },
})

require("tree-sitter-manager").setup({
	border = "rounded",
	auto_install = true,
})

require("mason").setup()
require("mason-lspconfig").setup()

vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format, { desc = "[L]sp [F]ormat" })
vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action, { desc = "[L]sp code [A]ction" })
vim.keymap.set("n", "<leader>lh", vim.lsp.buf.hover, { desc = "[L]sp [H]over" })
vim.keymap.set("n", "<leader>ld", vim.lsp.buf.definition, { desc = "[L]sp [D]efinition" })

-- telescope config and keybinds
require("telescope").setup({
	defaults = {
		path_display = {
			reverse_directories = true,
		},
		layout_config = {
			horizontal = {
				prompt_position = "top",
			},
		},
	},
	pickers = {
		help_tags = { theme = "ivy" },
		keymaps = { theme = "ivy" },
		find_files = { theme = "ivy" },
		builtin = { theme = "ivy" },
		live_grep = { theme = "ivy" },
		diagnostics = { theme = "ivy" },
		resume = { theme = "ivy" },
		oldfiles = { theme = "ivy" },
		commands = { theme = "ivy" },
		buffers = { theme = "ivy" },
		grep_string = { theme = "ivy" },
	},
})

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "[S]earch [H]elp" })
vim.keymap.set("n", "<leader>sk", builtin.keymaps, { desc = "[S]earch [K]eymaps" })
vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "[S]earch [F]iles" })
vim.keymap.set("n", "<leader>ss", builtin.builtin, { desc = "[S]earch [S]elect Telescope" })
vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "[S]earch by [G]rep" })
vim.keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })
vim.keymap.set("n", "<leader>sr", builtin.resume, { desc = "[S]earch [R]esume" })
vim.keymap.set("n", "<leader>s.", builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
vim.keymap.set("n", "<leader>sc", builtin.commands, { desc = "[S]earch [C]ommands" })
vim.keymap.set("n", "<leader>sb", builtin.buffers, { desc = "[S]earch existing [B]uffers" })
vim.keymap.set({ "n", "v" }, "<leader>sw", builtin.grep_string, { desc = "[S]earch current [W]ord" })
vim.keymap.set(
	"n",
	"<leader><leader>",
	":Telescope buffers sort_mru=true sort_lastused=true initial_mode=normal<CR>",
	{ desc = "[ ] Select from Existing Buffers" }
)

-- just in case
require("oil").setup()
vim.keymap.set("n", "<leader>o", "<CMD>Oil<CR>")

local cmp = require("blink.cmp")
cmp.build():pwait()
cmp.setup({
	keymap = { preset = "default" },
	completion = { documentation = { auto_show = false } },
	sources = { default = { "lsp", "path", "snippets", "buffer" } },
	fuzzy = { implementation = "rust" },
})

require("rose-pine").setup({
  styles = {
    transparency = true,
  },
})
vim.cmd("colorscheme rose-pine")

vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "NONE" })
vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "NONE" })
vim.api.nvim_set_hl(0, "FloatBorder", { bg = "NONE" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
