return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- Lua
      vim.lsp.config.lua_ls = {
	settings = {
	  Lua = {
	    diagnostics = {
	      globals = { "vim" },
	    },
	  },
	},
      }

      -- C#
      vim.lsp.config.csharp_ls = {}

      -- включаем серверы
      vim.lsp.enable("lua_ls")
      vim.lsp.enable("csharp_ls")
    end,
  },
}

