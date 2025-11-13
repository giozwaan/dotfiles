return {
    "nvim-telescope/telescope.nvim", tag = "0.1.8",
    dependencies = {
        "nvim-lua/plenary.nvim",
        -- "nvim-telescope/telescope-fzf-native.nvim",
    },
    config = function()
        local telescope = require("telescope")
        local builtin = require("telescope.builtin")

        telescope.setup({
            extenstions = {
                fzf = {}
            }
        })

        vim.keymap.set("n", "<space>ff", builtin.find_files)
        vim.keymap.set("n", "<space>gw", builtin.grep_string)
    end
}
