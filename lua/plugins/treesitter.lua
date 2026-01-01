return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  build = ":TSUpdate",

  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      highlight = {
        enable = true,
      },
      indent = { enable = true },
      autotag = { enable = true },
      auto_install = true,
    })
  end,
}
