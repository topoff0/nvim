return {
  "loctvl842/monokai-pro.nvim",
  config = function()
    require("monokai-pro").setup({
      transparent_background = false,
      terminal_colors = true,
      devicons = true, -- highlight the icons of `nvim-web-devicons`
      styles = {
        comment = { italic = true },
        keyword = { italic = true }, -- any other keyword
        type = { italic = true }, -- (preferred) int, long, char, etc
        storageclass = { italic = true }, -- static, register, volatile, etc
        structure = { italic = true }, -- struct, union, enum, etc
        parameter = { italic = true }, -- parameter pass in function
        annotation = { italic = true },
        tag_attribute = { italic = true }, -- attribute of tag in reactjs
      },
      filter = "machine", -- classic | octagon | pro | machine | ristretto | spectrum
      inc_search = "background", -- underline | background
      background_clear = {
        -- "float_win",
        "toggleterm",
        "telescope",
        "renamer",
        "notify",
        "neo-tree",
      },
      plugins = {
        bufferline = {
          underline_selected = false,
          underline_visible = false,
        },
        indent_blankline = {
          context_highlight = "default", -- default | pro
          context_start_underline = false,
        },
      },
              override = function(c)
          return {
            IndentBlanklineChar = { fg = c.base.dimmed4 },
          }
        end,
---@diagnostic disable-next-line: unused-local
        overridePalette = function(filter)
          return {
            dark2 = "#101014",
            dark1 = "#16161E",
            background = "#1A1B26",
            text = "#FEFCFB",
            accent1 = "#f7768e",
            accent2 = "#7aa2f7",
            accent3 = "#e0af68",
            accent4 = "#9ece6a",
            accent5 = "#0DB9D7",
            accent6 = "#9d7cd8",
            dimmed1 = "#EF798A",
            dimmed2 = "#E5C3D1",
            dimmed3 = "#E5C3D1",
            dimmed4 = "#E5C3D1",
            dimmed5 = "#16161e",
          }
        end
    })
    vim.cmd.colorscheme("monokai-pro")
  end
}
