local M = {}

M.setup = function()
  require("nvim-treesitter").setup {
    ensure_install = {
      "core",
      "stable",
    },
  }
end

-- M.setup()

return M
