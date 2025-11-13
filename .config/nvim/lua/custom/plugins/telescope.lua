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

        vim.keymap.set("n", "gd", builtin.lsp_definitions, { buffer = 0 })
        vim.keymap.set("n", "gr", builtin.lsp_references, { buffer = 0 })
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { buffer = 0 })
        vim.keymap.set("n", "gT", vim.lsp.buf.type_definition, { buffer = 0 })
        vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 })

        vim.keymap.set("n", "<space>cr", vim.lsp.buf.rename, { buffer = 0 })
        vim.keymap.set("n", "<space>ca", vim.lsp.buf.code_action, { buffer = 0 })
        vim.keymap.set("n", "<space>wd", builtin.lsp_document_symbols, { buffer = 0 })
    end
}
