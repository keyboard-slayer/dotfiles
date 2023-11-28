return {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    dependencies = {
        'nvim-lua/plenary.nvim',
        "nvim-telescope/telescope-file-browser.nvim"
    },
    opts = {},
    config = function()
        local telescope = require('telescope')
        local builtin = require('telescope.builtin')

        telescope.load_extension('file_browser')

        vim.keymap.set('n', '<C-p>', builtin.find_files, {})
        vim.keymap.set('n', '<C-f>', builtin.live_grep, {})
        vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

        vim.api.nvim_set_keymap('n', '<C-o>', '<cmd>Telescope file_browser<cr>', {noremap = true})
    end
}
