return {
    "nvim-treesitter/nvim-treesitter",
    build = ':TSUpdate',
    event = 'BufReadPost',
    config = function() 
        require("nvim-treesitter.configs").setup({
            ensure_installed = {
                "rust",
                "python",
                "c",
                "lua",
                "markdown",
                "diff",
                "javascript",
                "html",
                "json",
            },

            highlight = { enable = true, }
        })
    end
}
