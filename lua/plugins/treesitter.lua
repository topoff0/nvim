return {
    'nvim-treesitter/nvim-treesitter',
    branch = 'master',
    build = ":TSUpdate",

  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      highlight = {
	enable = true,
      },
      indent = { enable = true },
      autotag = { enable = true},
      ensure_installed = {
	"lua",
	"c_sharp",
	"tsx",
	"html",
      },
      auto_install = false,
    })
  end
}
