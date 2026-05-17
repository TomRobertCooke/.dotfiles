vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("config.lazy")

vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.smartindent = false
vim.opt.autoindent = false
vim.opt.cindent = false

require("config.lsp-configs")
require("config.rebinds")
