return {
  "saghen/blink.cmp",
  version = "*",
  config = function()
    require("blink.cmp").setup({
      sources = {
        default = { "lsp", "easy-dotnet", "path" },
        providers = {
          ["easy-dotnet"] = {
            module = "easy-dotnet.completion.blink",
            score_offset = 10000,
            async = true,
          },
        },
      },
    })
  end,
}

