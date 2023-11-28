return {
    "ThePrimeagen/harpoon",
    opts = {},
    config = function()
        local mark = require("harpoon.mark")
        local harpoon = require("telescope").load_extension('harpoon')
        local ui = require("harpoon.ui")

        vim.keymap.set("n", "<leader>a", mark.toggle_file)
        vim.keymap.set("n", "<leader>e", harpoon.marks, {})

        vim.keymap.set("n", "<C-j>", function() ui.nav_file(1) end)
        vim.keymap.set("n", "<C-k>", function() ui.nav_file(2) end)
        vim.keymap.set("n", "<C-l>", function() ui.nav_file(3) end)
        vim.keymap.set("n", "<C-m>", function() ui.nav_file(4) end)
    end
}
