return {
    {
        "williamboman/mason.nvim",
        opts = {}
    },
    {
        "williamboman/mason-lspconfig.nvim",
        opts = {
            -- https://github.com/williamboman/mason-lspconfig.nvim#available-lsp-servers
            ensure_installed = { 
                "lua_ls",
                "rust_analyzer", 
                "clangd",
                "ruff_lsp",
                "zls"
            },
            automatic_installation = true
        },
        dependencies = {
            "neovim/nvim-lspconfig",
            "williamboman/mason.nvim",
        }
    }
}
