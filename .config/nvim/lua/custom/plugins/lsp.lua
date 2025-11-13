return {
  "hrsh7th/nvim-cmp",
  dependencies = {
      "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    local cmp_nvim_lsp = require("cmp_nvim_lsp")
    local capabilities = cmp_nvim_lsp.default_capabilities()
    local cmp = require("cmp")
    local virtual_text = true

    local toggle_hint = function()
        virtual_text = not virtual_text
        vim.diagnostic.config({ virtual_text = virtual_text })
    end

    vim.diagnostic.config({ virtual_text = virtual_text })
    vim.keymap.set("", "<space>tt", toggle_hint)

    cmp.setup {
      sources = {
        {
          name = "lazydev",
          -- set group index to 0 to skip loading LuaLS completions as lazydev recommends it
          group_index = 0,
        },
        { name = "nvim_lsp" },
        { name = "path" },
        { name = "buffer" },
      },
      mapping = {
        ["<C-n>"] = cmp.mapping.select_next_item { behavior = cmp.SelectBehavior.Insert },
        ["<C-p>"] = cmp.mapping.select_prev_item { behavior = cmp.SelectBehavior.Insert },
        ["<C-y>"] = cmp.mapping(
          cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Insert,
            select = true,
          },
          { "i", "c" }
        ),
      },

      -- Enable luasnip to handle snippet expansion for nvim-cmp
      snippet = {
        expand = function(args)
          vim.snippet.expand(args.body)
        end,
      },
    }

    vim.lsp.config("*", {
      capabilities = capabilities,
    })
  end,
}
