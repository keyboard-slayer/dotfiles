return {
    "catppuccin/nvim", 
    name = "catppuccin",
    priority = 1000,
    config = function()
        require('catppuccin').setup({
            integrations = {
                harpoon = true,
                leap = true,
                mason = true,
                treesitter = true,
                telescope = true,
            },
            color_overrides = {
                mocha = {
                    base = "#000000",
                    mantle = "#000000",
                    crust = "#000000",
                },
            },
        })
        vim.cmd.colorscheme 'catppuccin-mocha'
    end
}
