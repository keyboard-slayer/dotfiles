return {
    "nvim-treesitter/nvim-treesitter",
    build = ':TSUpdate',
    event = 'BufReadPost',
    opts = {
        ensure_installed = {
            "rust",
            "python",
            "c",
            "c++",
            "lua",
            "markdown",
            "diff",
            "javascript",
            "html",
            "json"
        }
    }
}
