return {
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      -- list of servers for mason to install
      ensure_installed = {
        "ts_ls",
        "html",
        "cssls",
        "tailwindcss",
        "svelte",
        "lua_ls",
        -- "graphql",
        -- "emmet_ls",
        -- "prismals",
        "pyright",
        "eslint",
        "pyright"
      },
    },
    dependencies = {
      {
        "williamboman/mason.nvim",
        opts = {},
      },
      "neovim/nvim-lspconfig",
    },
  }
}
