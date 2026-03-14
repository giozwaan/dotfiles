return {
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "lua_ls",
	"bash_ls",
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
