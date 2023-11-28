return {
    "ThePrimeagen/harpoon",
    opts = {},
    config = function()
        local mark = require("harpoon.mark")
        local harpoon = require("telescope").load_extension('harpoon')

        vim.keymap.set("n", "<leader>a", mark.toggle_file)
        vim.keymap.set("n", "<leader>e", harpoon.marks, {})
    end
}
