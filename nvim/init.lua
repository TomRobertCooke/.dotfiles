vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("config.lazy")

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.cindent = true

vim.opt.number = true
vim.opt.relativenumber = false -- true

require("config.lsp-configs")
require("config.rebinds")
require("config.treesitter")
