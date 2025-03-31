-- local data = assert(vim.fn.stdpath "data") --[[@as string]]

require("telescope").setup {
  -- defaults = {
  --   file_ignore_patterns = { "dune.lock" },
  -- },
  extensions = {
    wrap_results = true,

    fzf = {},
    -- history = {
    --   path = vim.fs.joinpath(data, "telescope_history.sqlite3"),
    --   limit = 100,
    -- },
  },
}

pcall(require("telescope").load_extension, "fzf")

local builtin = require "telescope.builtin"

vim.keymap.set("n", "<space>ff", builtin.find_files)
vim.keymap.set("n", "<space>gw", builtin.grep_string)
