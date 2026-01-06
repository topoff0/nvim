return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local job_indicator = { require("easy-dotnet.ui-modules.jobs").lualine }
    require("lualine").setup({
      sections = {
        lualine_a = { "mode", job_indicator },
      },
      options = {
        theme = "tomorrow_night",
      },
    })
  end,
}
