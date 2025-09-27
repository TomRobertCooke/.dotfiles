return {

    "nvim-treesitter/nvim-treesitter", 
    lazy = false, 
    branch = 'master', 
    build = ':TSUpdate',

    config = function()
        require('nvim-treesitter.configs').setup({
            ensure_installed = { "c", "cpp", "cmake", "lua", "luadoc", "vim", "vimdoc", "python", "bash", "arduino", "toml" },
            highlight = { enable = true },
            indent = { enable = true }
        })
    end

}

