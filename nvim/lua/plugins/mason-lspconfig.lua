return {

    "mason-org/mason-lspconfig.nvim",
    opts = {
        ensure_installed = {
            "lua_ls",
            "cmake",
            "clangd",
        }
    },
    dependencies = {
        "neovim/nvim-lspconfig", --also requires mason
    }

}
