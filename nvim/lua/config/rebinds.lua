----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
--- All keybinds executed after plugins are loaded, leaders mapped in init.lua ---
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------

-- Telescope
local telescope_builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", telescope_builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", telescope_builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", telescope_builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", telescope_builtin.help_tags, { desc = "Telescope help tags" })

-- Neotree
vim.keymap.set("n", "<C-n>", ":Neotree filesystem toggle float<CR>")

-- LSP
vim.keymap.set("n", "<leader>lh", vim.lsp.buf.hover, {})
vim.keymap.set("n", "<leader>ld", vim.lsp.buf.definition, {})
vim.keymap.set({ "n", "v" }, "<leader>la", vim.lsp.buf.code_action, {})

-- Conform
local conform = require("conform")
vim.keymap.set("n", "<leader>c", conform.format, {})

-- Harpoon
-- harpoon.lua already bounded normal mode <C-e> to the menu
--
local harpoon = require("harpoon")
vim.keymap.set("n", "<leader>a", function()
	harpoon:list():add()
end)

vim.keymap.set("n", "<leader>r", function()
	harpoon:list():remove()
end)

vim.keymap.set("n", "<C-h>", function()
	harpoon:list():select(1)
end)
vim.keymap.set("n", "<C-j>", function()
	harpoon:list():select(2)
end)
vim.keymap.set("n", "<C-k>", function()
	harpoon:list():select(3)
end)
vim.keymap.set("n", "<C-l>", function()
	harpoon:list():select(4)
end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-S-h>", function()
	harpoon:list():prev()
end)
vim.keymap.set("n", "<C-S-l>", function()
	harpoon:list():next()
end)
