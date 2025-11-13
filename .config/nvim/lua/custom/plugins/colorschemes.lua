return {
    lazy = false,
    priority = 1000,
    opts = {},
    "folke/tokyonight.nvim",
    config = function()
        vim.cmd("colorscheme tokyonight")
    end,
}
