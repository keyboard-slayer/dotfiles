return {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',

    dependencies = {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'neovim/nvim-lspconfig',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',
        'L3MON4D3/LuaSnip',
        'simrat39/rust-tools.nvim',
        'lvimuser/lsp-inlayhints.nvim'
    },

    config = function()
        local ih = require('lsp-inlayhints')
        ih.setup()

        local lsp_zero = require('lsp-zero')
        lsp_zero.preset("recommended")
        lsp_zero.setup_servers({
            "lua_ls",
            "clangd",
            "pyright",
            "zls"
        })

        require("lspconfig").rust_analyzer.setup({
            on_attach = function(client, bufnr)
                ih.on_attach(client, bufnr)
            end,
            settings = {
                ["rust_analyzer"] = {
                    ["inlayHints"] = {
                        enable = true,
                        parameterHints = true,
                        typeHints = true,
                        chainingHints = true,
                        maxLength = 80,
                        align = false,
                    },

                }
            }
        })

        local cmp = require('cmp')
        local cmp_select = {behavior = cmp.SelectBehavior.Select}

        cmp.setup({
            sources = {
                {name = 'path'},
                {name = 'nvim_lsp'},
                {name = 'nvim_lua'},
            },
            formatting = lsp_zero.cmp_format(),
            mapping = cmp.mapping.preset.insert({
                ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
                ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
                ['<C-y>'] = cmp.mapping.confirm({ select = true }),
                ['<C-Space>'] = cmp.mapping.complete(),
            }),
        })
    end
}
