return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "c_sharp",
        "javascript",
        "json",
        "jsonc",
        "xml",
        "sql",
        "vim"
      },
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
      autotag = {
        enable = true,
      },
      auto_install = true,
    })
  end,
}
